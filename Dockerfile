FROM medplum/medplum-server:latest

# Copy your config into the container
COPY medplum.config.json /usr/src/medplum/medplum.config.json

EXPOSE 8103

CMD ["node", "dist/index.js", "file:/usr/src/medplum/medplum.config.json"]
