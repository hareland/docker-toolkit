#!/bin/bash

# Split INNGEST_EVENT_KEYS by comma and append --event-key for each
EVENT_KEYS=""
IFS=',' read -ra KEYS <<< "$INNGEST_EVENT_KEYS"
for key in "${KEYS[@]}"; do
  EVENT_KEYS="$EVENT_KEYS --event-key $key"
done

# If a config file is provided, we want to load it...
CONFIG_OPTION=""
if [[ -n $INNGEST_CONFIG_FILE ]]; then
  CONFIG_OPTION=" --config $INNGEST_CONFIG_FILE"
fi


# Start the Inngest server with the appropriate flags
exec inngest start"$CONFIG_OPTION" "$EVENT_KEYS" --signing-key "$INNGEST_SIGNING_KEY"
