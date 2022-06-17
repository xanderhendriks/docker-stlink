STLINK Tools
============

[STLINK Tools](https://github.com/xanderhendriks/docker-stlink): ST Link docker container for on Raspberry Pi and Jetson test targets

Build
-----

To create the image `xanderhendriks/stlink`, execute the following command in the
`docker-stlink` folder:

    docker build --platform linux/arm64/v8 -t xanderhendriks/stlink:1.0 .

Push the changes to the docker hub:

    docker push xanderhendriks/stlink:1.0


Run
---

    $ docker pull xanderhendriks/stlink:1.0

    $ docker run -it --rm --name stlink \
        -v c:\GIT\repo:/workspace \
        xanderhendriks/stlink:1.0


Help
----

The official documentation can be found [here](https://github.com/stlink-org/stlink#readme)
