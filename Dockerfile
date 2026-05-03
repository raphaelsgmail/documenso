FROM ghcr.io/documenso/documenso:latest

# Set the working directory to where the web app lives inside the image
WORKDIR /app/apps/web

# Start the web server directly using the local next command
# This is the lightest possible way to run it
CMD ["npx", "next", "start", "-p", "3000"]
