FROM alpine:latest

LABEL version="1.0.0"
LABEL repository="http://github.com/gusaul/check-skip-staging"
LABEL maintainer="Gusaul"
LABEL "com.github.actions.name"="Check Skip Staging"
LABEL "com.github.actions.description"="Check whether PR to master already merged to staging before."
LABEL "com.github.actions.icon"="git-commit"
LABEL "com.github.actions.color"="gray-dark"

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]