FROM alpine:latest
LABEL maintainer="Wassu <jancok@linux.com>"

LABEL "com.github.actions.name"="Branch Cleanup"
LABEL "com.github.actions.description"="Delete the branch after a pull request has been merged"
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="red"

RUN	apk add --no-cache \
	bash \
	ca-certificates \
	curl \
	jq

COPY jiancok /usr/bin/jiancok

ENTRYPOINT ["jiancok"]
