# DOCKER STATIC WEBSITE

Deploy of static website using Nginx running as non-root user on Alpine (very light container).

## USE

### With proxy container

This project is intended to be used along with a proxy container such as [my docker-webproxy](https://gitlab.com/andresouzaabreu/docker-webproxy) and a network to connect this container to the proxy container.

1. Create a network with a proxy container.
2. Put your static website under the directory `./websites` in this repo.
3. Run `docker-compose up -d` and that's it.

### Without proxy container

Of course, you can also deploy your static website without any docker proxy or network. In this case, copy the [docker-compose-noproxy file](./docker-compose-noproxy.yml) to `./docker-compose.yml`. By default, it will listen on port `8080`.

```
mv docker-compose-noproxy.yml docker-compose.yml
docker-compose up -d
```

## LICENSE

Do whatever you want with the code of this repo.
