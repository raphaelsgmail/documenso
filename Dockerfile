FROM ghcr.io/documenso/documenso:latest

# Set the working directory
WORKDIR /app

# Start the web app directly using the node command
# This is the most lightweight way to run on Render Free Tier
CMD ["node", "apps/web/server.js"]
