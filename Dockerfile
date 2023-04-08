FROM alpine:3.17.3
MAINTAINER ilyaro

WORKDIR /app

## /workspace is default persistent volume in google cloud build: https://cloud.google.com/build/docs/api/reference/rest/v1/projects.builds#volume
COPY webserver ./

EXPOSE 8090

CMD [ "/app/webserver" ]
