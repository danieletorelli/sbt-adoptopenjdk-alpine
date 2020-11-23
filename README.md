[![Build Status](https://github.com/danieletorelli/sbt-alpine/workflows/Docker/badge.svg?branch=master)](https://github.com/danieletorelli/sbt-alpine/actions?query=workflow%3A%22Docker%22+branch%3Amaster)

sbt-alpine
==========

This is for running SBT in Docker using [AdoptOpenJDK 8](https://hub.docker.com/r/adoptopenjdk/openjdk8) alpine base images.

Usage
-----

To run the SBT shell:

```
docker run -it danieletorelli/sbt-alpine
```

To use `/bin/bash` as initial command:

```
docker run -it danieletorelli/sbt-alpine /bin/bash
```

To mount your current directory as workspace:

```
docker run -it -v $(pwd):/var/workspace danieletorelli/sbt-alpine
```

