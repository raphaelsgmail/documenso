FROM ghcr.io/documenso/documenso:latest

# Set the working directory
WORKDIR /app

# 1. Sync the database (we use the full path to the schema)
# 2. Start ONLY the web app using npx and the correct filter
CMD npx prisma db push --schema /app/packages/prisma/schema.prisma --accept-data-loss --skip-generate && npx turbo run start --filter=@documenso/web

