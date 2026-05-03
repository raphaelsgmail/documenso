FROM ghcr.io/documenso/documenso:latest

# Set the working directory to where the app is installed in the image
WORKDIR /app

# 1. Skip the DB push since it's already synced (saves memory)
# 2. Start the web app directly using the node command
CMD ["node", "apps/web/server.js"]
