FROM inngest/inngest

# Copy your entrypoint script into the container
COPY entrypoint.sh /app/entrypoint.sh

# Ensure the entrypoint script is executable
RUN chmod +x /app/entrypoint.sh

# Set the default entrypoint
ENTRYPOINT ["/app/entrypoint.sh"]
