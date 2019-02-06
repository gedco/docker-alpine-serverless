# Gedco Alpine Linux Serverless Framework Docker image.
#
#   Build usage: docker build -t gedco/alpine-serverless --pull --rm .
# Dev Run usage: docker run --name sls-awesomeapp --rm -it -v $(pwd):/root/ gedco/alpine-serverless
#
FROM node:10-alpine

# Install and configure all the software. Clean.
RUN apk upgrade; apk add nano aws-cli; \
    npm install -g serverless; \
    echo "------------ DONE -------------"; \
    sls --help;

# Default to console.
CMD ["/bin/sh"]
