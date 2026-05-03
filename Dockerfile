FROM ghcr.io/documenso/documenso:latest

# Set the working directory
WORKDIR /app

# 1. Sync the database using the correct path to the schema
# 2. Start the web app using the built-in npm script
CMD npx prisma db push --schema /app/packages/prisma/schema.prisma --accept-data-loss --skip-generate && npm run start -- --filter=@documenso/web

