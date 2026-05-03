FROM ghcr.io/documenso/documenso:latest

# Set the working directory
WORKDIR /app

# We know the DB is synced now, so we just start the web app.
# We use the workspace flag to tell npm exactly which part to run.
CMD ["npm", "start", "--workspace=@documenso/web"]
