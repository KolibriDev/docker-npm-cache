Building
========

```bash
> docker build -rm -t npm-registry .
```

Usage
=====

The container needs to be aware of its own hostname in order to properly rewrite
child requests
```bash
> docker run --rm -h localhost:7001 -p 7001:80 npm-registry
```

Acknowledgements
================

Implementing the npm cache as described in the [awesome Yammer post](yammer),
[John Watson](dctrwatson)'s gist and based off of the
[trusted dockerfile/nginx](docker) build.

[yammer]: http://eng.yammer.com/a-private-npm-cache/
[dctrwatson]: https://gist.github.com/dctrwatson/5785675
[docker]: https://index.docker.io/u/dockerfile/nginx/
