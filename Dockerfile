FROM scratch

ARG APP_NAME

COPY ${APP_NAME} /main

# Command to run
ENTRYPOINT ["/main"]
