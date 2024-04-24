# Jenkins Agent with mono and sbt

[![](https://images.microbadger.com/badges/image/dwolla/jenkins-agent-mono-sbt.svg)](https://microbadger.com/images/dwolla/jenkins-agent-mono-sbt)
[![license](https://img.shields.io/github/license/dwolla/jenkins-agent-docker-mono-sbt.svg?style=flat-square)](https://github.com/Dwolla/jenkins-agent-docker-mono-sbt/blob/master/LICENSE)

Docker image that makes mono and [sbt](http://scala-sbt.org/) available to Jenkins jobs, based on Dwolla’s [sbt-version-cache](https://github.com/Dwolla/docker-sbt-version-cache) image.

## Local Development

Refer to the latest MONO_TAG from [dwolla/jenkins-agent-mono](https://hub.docker.com/repository/docker/dwolla/jenkins-agent-mono) and run the following command:

`make MONO_TAG=<most recent tag from dwolla/jenkins-agent-mono> all`