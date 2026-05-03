FROM ghcr.io/documenso/documenso:latest

# Set the working directory to where the app lives
WORKDIR /app

# Run migrations using the full path to the schema, then start
CMD npx prisma migrate deploy --schema /app/packages/prisma/schema.prisma && npm run start
