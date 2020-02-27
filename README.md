# litecoind-integration-test-docker

# Running
```
docker run -p 19443:19443 --rm coinzway/litecoind-integration-test-docker:latest
```

# Building

Currently this image is build automatically on docker hub.

# Building locally

Build docker image:
 
```bash
BRANCH="$(git rev-parse --abbrev-ref HEAD)"
docker build . -t coinzway/litecoind-integration-test-docker:$BRANCH
```

Push to docker hub:

```bash
BRANCH="$(git rev-parse --abbrev-ref HEAD)"
docker push coinzway/litecoind-integration-test-docker:$BRANCH
```

Both in one go:
```bash
BRANCH="$(git rev-parse --abbrev-ref HEAD)"
docker build . -t coinzway/litecoind-integration-test-docker:$BRANCH && \
docker push coinzway/litecoind-integration-test-docker:$BRANCH
```