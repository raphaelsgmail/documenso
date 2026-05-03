FROM ghcr.io/documenso/documenso:latest

# Set the working directory
WORKDIR /app

# Use 'db push' instead of 'migrate deploy' to bypass the 'database not empty' error
CMD npx prisma db push --schema packages/prisma/schema.prisma --accept-data-loss && npm run start
