# DOCKER STATIC WEBSITE

Deploy of static websites using Docker, Nginx, and Alpine (very light container).

## ABOUT

This project is intended to be used along with a proxy container such as [my docker-webproxy](https://gitlab.com/andresouzaabreu/docker-webproxy) and a network to connect this container to the proxy container. Of course, you can also change the source to not use any proxy container or network.

## USE

1 - Create a network with a proxy container.
2 - Put your static website under the directory `./websites` in this repo.
3 - Run `docker-compose up -d` and that's it.

To create a network with a proxy container you can just clone my docker-webproxy repo and set it up in less than a minute.

## LICENSE

Do whatever you want with the code of this repo.
