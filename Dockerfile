FROM denoland/deno:1.41.3

ARG GIT_REVISION
ENV DENO_DEPLOYMENT_ID=${GIT_REVISION}

WORKDIR /app
COPY . .

RUN deno cache main.ts

EXPOSE 3000
VOLUME ["/app/data"]
CMD ["run", "-A", "main.ts"]
