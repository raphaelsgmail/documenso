FROM ghcr.io/documenso/documenso:latest

# The database is already in sync, so we just need to start the app.
# This direct command avoids the "Turbo" error and saves memory.
CMD ["node", "apps/web/server.js"]
