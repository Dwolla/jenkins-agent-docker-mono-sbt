# Jenkins Agent with mono and sbt

[![](https://images.microbadger.com/badges/image/dwolla/jenkins-agent-mono-sbt.svg)](https://microbadger.com/images/dwolla/jenkins-agent-mono-sbt)
[![license](https://img.shields.io/github/license/dwolla/jenkins-agent-docker-mono-sbt.svg?style=flat-square)](https://github.com/Dwolla/jenkins-agent-docker-mono-sbt/blob/master/LICENSE)

Docker image that makes mono and [sbt](http://scala-sbt.org/) available to Jenkins jobs, based on Dwolla’s [sbt-version-cache](https://github.com/Dwolla/docker-sbt-version-cache) image.

## Local Development

With [yq](https://kislyuk.github.io/yq/) installed, to build this image locally run the following command:

```bash
make \
    MONO_TAG=$( curl --silent https://raw.githubusercontent.com/Dwolla/jenkins-agents-workflow/main/.github/workflows/build-docker-image.yml | \
        yq .on.workflow_call.inputs.MONO_TAG.default) \
    all
```

Alternatively, without [yq](https://kislyuk.github.io/yq/) installed, refer to the MONO_TAG default values defined in [jenkins-agents-workflow](https://github.com/Dwolla/jenkins-agents-workflow/blob/main/.github/workflows/build-docker-image.yml) and run the following command:

`make MONO_TAG=<default-mono-tag-from-jenkins-agents-workflow> all`