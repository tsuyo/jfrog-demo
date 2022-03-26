FROM scratch

COPY jfrog_demo /main

# Command to run
ENTRYPOINT ["/main"]
