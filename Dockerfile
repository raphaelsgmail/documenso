FROM ghcr.io/documenso/documenso:latest

# Set the working directory
WORKDIR /app

# 1. Sync the database (with the corrected flag)
# 2. Start the web app
CMD npx prisma db push --schema /app/packages/prisma/schema.prisma --accept-data-loss --skip-generate && npx turbo run start --filter=@documenso/web
