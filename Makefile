MONO_TAG := $(MONO_JDK11_TAG)
JOB := core-${MONO_TAG}
CLEAN_JOB := clean-${MONO_TAG}

all: ${JOB}
clean: ${CLEAN_JOB}
.PHONY: all clean ${JOB} ${CLEAN_JOB}

${JOB}: core-%: Dockerfile
	docker buildx build \
	  --platform linux/arm64,linux/amd64 \
	  --build-arg MONO_TAG=$* \
	  --tag dwolla/jenkins-agent-mono-sbt:$*-SNAPSHOT \
	  .

${CLEAN_JOB}: clean-%:
	docker image rm --force dwolla/jenkins-agent-mono-sbt:$*-SNAPSHOT