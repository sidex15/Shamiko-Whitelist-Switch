#!/system/bin/sh

# Check the switch status and create/delete the whitelist file accordingly
MODDIR=${0%/*}

# Checking if the module switch is enabled
is_module_enable() {
  if [[ -e "${MODDIR}/disable" ]] || [[ -e "${MODDIR}/remove" ]]; then
    return 1  # Disabled
  else
    return 0  # Enabled
  fi
}

# Executing the switch
whitelist_switch() {
  while true; do
    
    # Check module enable/disable status
    is_module_enable
    if [ $? -eq 0 ]; then
      # Module is enabled, create whitelist file if it doesn't exist
      touch /data/adb/shamiko/whitelist
      echo "Whitelist file created."
    else
      # Module is disabled, delete whitelist file if it exists
      rm /data/adb/shamiko/whitelist
      echo "Whitelist file deleted."
    fi
    
    sleep 5  # Sleep for 5 seconds before checking again
  done
}

# Start the switch monitoring
whitelist_switch
