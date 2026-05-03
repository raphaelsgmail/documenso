FROM ghcr.io/documenso/documenso:latest

# Switch to the app directory
WORKDIR /app

# Run migrations and then start the server
CMD npx prisma migrate deploy && npm run start
