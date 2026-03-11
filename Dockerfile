FROM medplum/medplum-server:latest

EXPOSE 8103

CMD ["node", "--require", "./packages/server/dist/otel/instrumentation.js", "packages/server/dist/index.js", "env"]
