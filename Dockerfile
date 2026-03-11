FROM medplum/medplum-server:latest

# Copy to the exact directory where the server process runs from
COPY medplum.config.json /usr/src/medplum/packages/server/medplum.config.json

EXPOSE 8103
