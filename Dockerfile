FROM ghcr.io/documenso/documenso:latest

# Run migrations pointing to the correct schema path, then start
CMD npx prisma migrate deploy --schema packages/prisma/schema.prisma && npm run start

