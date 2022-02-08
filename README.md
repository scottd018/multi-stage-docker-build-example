# Summary

This repository exists to serve as a reminder why docker multi-stage builds end up
being important.  The trade off is complexity of your Dockerfile versus the end 
product of a slimmer image, requiring the bare minimum to run during runtime.

## Build a Single Stage Image

To build a single stage image, gathering all the requirements necessary to build, 
you can run:

```
docker build . -t test:single -f Dockerfile.single

# you can use `make single` if you do not want to type the full command
```

## Build a Single Stage Image with Dependencies Removed

To build a single stage image, gathering all the requirements necessary to build, 
and then use a removal to remove dependencies (to simulate what would happen in a
multi-stage build) you can run:

```
docker build . -t test:single-remove -f Dockerfile.single-remove

# you can use `make single-remove` if you do not want to type the full command
```

## Build a Multi Stage Image

To build a mulit stage image, gathering all the requirements necessary to build 
during the build stage, and only the packages necessary to run during runtime
you can run:

```
docker build . -t test:multi -f Dockerfile.multi

# you can use `make multi` if you do not want to type the full command
```

## Outcome

As a summary, here is the outcome:

```
# single stage image
test          single                f39e8b83bb00   7 seconds ago    528MB

# single stage image while removing dependencies manually
test          single-remove         c3d655a0daf1   5 seconds ago    529MB

# multi-stage image
test          multi                 ef8ea59c6b70   4 minutes ago    271MB
```


