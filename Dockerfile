FROM node:20-slim

WORKDIR /app

# Install Medplum server from NPM
RUN npm install -g @medplum/server

# Create config and binary storage directories
RUN mkdir -p /app/binary

# Copy config file
COPY medplum.config.json /app/medplum.config.json

EXPOSE 8103

CMD ["medplum-server", "/app/medplum.config.json"]
