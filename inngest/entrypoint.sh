#!/bin/bash

# Split INNGEST_EVENT_KEYS by comma and append --event-key for each
EVENT_KEYS=""
IFS=',' read -ra KEYS <<< "$INNGEST_EVENT_KEYS"
for key in "${KEYS[@]}"; do
  echo "GETTING KEY"
  EVENT_KEYS="$EVENT_KEYS --event-key $key"
done

# Start the Inngest server with the appropriate flags
exec inngest start --config /app/config/inngest.yml "$EVENT_KEYS" --signing-key "$INNGEST_SIGNING_KEY"
