FROM ghcr.io/documenso/documenso:latest

# Set the working directory
WORKDIR /app

# 1. Sync the database
# 2. Start ONLY the main web app (remix) using npx to find the 'turbo' command
CMD npx prisma db push --schema packages/prisma/schema.prisma --accept-data-loss --skip-generate && npx turbo run start --filter=@documenso/remix

