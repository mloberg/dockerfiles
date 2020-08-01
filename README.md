# dockerfiles

A collection of Dockerfiles for my use.

    make build

## AWS SAM CLI

Working directory is `/sam`

    docker run -it --rm -v $PWD:/sam mlo/aws-sam --version

If you want to use `local start-api`, mount the docker sock, expose port `3000`,
and use `--host 0.0.0.0` in your SAM command.

    docker run -it --rm -v $PWD:/sam -v /var/run/docker.sock:/var/run/docker.sock -p 3000:3000 mlo/aws-sam local start-api --host 0.0.0.0
