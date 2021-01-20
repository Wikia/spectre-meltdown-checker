FROM artifactory.wikia-inc.com/dockerhub/alpine:3.13

RUN apk --update --no-cache add kmod binutils grep perl

COPY . /check

ENTRYPOINT ["/check/spectre-meltdown-checker.sh"]
