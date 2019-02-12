FROM alpine:latest
MAINTAINER Stefan Maier <stefan@datalove.io>
LABEL "com.github.actions.name"="PR Closer"
LABEL "com.github.actions.description"="After closing / merging PR remove helm chart"
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="red"

RUN	apk add --no-cache \
	bash \
	ca-certificates \
	curl \
	jq

COPY pr-closer-action /usr/bin/pr-closer-action

ENTRYPOINT ["pr-closer-action"]