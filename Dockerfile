FROM ghcr.io/documenso/documenso:latest

# Use the full path to the turbo tool already installed in the image
CMD npx turbo run start --filter=@documenso/web

