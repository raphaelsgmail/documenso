FROM ghcr.io/documenso/documenso:latest

# Set the working directory
WORKDIR /app

# 1. We use 'npx prisma db push' to sync the database
# 2. We use 'node' to start the web server directly using the path inside the image
CMD npx prisma db push --schema /app/packages/prisma/schema.prisma --accept-data-loss --skip-generate && node apps/web/server.js
