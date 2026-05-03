FROM ghcr.io/documenso/documenso:latest

# Ensure we are in the app directory
WORKDIR /app

# 1. Sync the database (using npx to find prisma)
# 2. Start ONLY the web app (using npx to find turbo)
CMD npx prisma db push --schema /app/packages/prisma/schema.prisma --accept-data-loss --skip-generate && npx turbo run start --filter=@documenso/web
