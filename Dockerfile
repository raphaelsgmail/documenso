FROM ghcr.io/documenso/documenso:latest

# Set the working directory
WORKDIR /app

# 1. Sync database (skipping the unnecessary 'generate' step)
# 2. Start the application
CMD npx prisma db push --schema packages/prisma/schema.prisma --accept-data-loss --skip-generate && npm run start
