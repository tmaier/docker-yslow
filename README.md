# Docker image for YSlow

This is a docker image for [YSlow](http://yslow.org/) based on PhantomJS.
See http://yslow.org/phantomjs/

## CLI

This docker container contains a flexible `ENTRYPOINT`.

One can call a shortcut version or a longer version with al parameters.
Later one is particularly useful for CI pipelines.

```bash
$ docker run tmaier/yslow --cdns "fonts.googleapis.com" www.example.com
```

```bash
$ docker run tmaier/yslow:latest phantomjs yslow.js --info grade --format tap --cdns "fonts.googleapis.com" www.example.com
```

## Author

[Tobias L. Maier](http://tobiasmaier.info) for [BauCloud GmbH](http://www.baucloud.com)
