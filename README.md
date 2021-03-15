[![build](https://img.shields.io/github/workflow/status/danieletorelli/sbt-alpine/Docker/master?style=for-the-badge)](https://github.com/danieletorelli/sbt-alpine/actions?query=workflow%3A%22Docker%22+branch%3Amaster)

sbt-alpine
==========

This is for running SBT in Docker using [AdoptOpenJDK](https://hub.docker.com/r/adoptopenjdk) alpine base images.

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

