FROM ghcr.io/documenso/documenso:latest

# We stay in the default workdir of the image
# We use npx to ensure the 'turbo' command is found
# We only start the web app to save memory on the Free Tier
CMD npx turbo run start --filter=@documenso/web
