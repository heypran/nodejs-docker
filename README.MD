
# Portable nodejs app using docker 

- Build the image using 
``` docker build -t  node-app .```

- View image using 
``` docker images```

- Run the image 
``` docker run -p 3030:8080 -d node-app```

- View running images and container ids
```docker ps```

- To go inside the container 
``` docker exec -it <container id> /bin/bash```

- To stop the container 
```docker stop <container id>```

- To remove images 
``` docker rmi <image id>```

- To remove containers
``` docker rm <container id>```

- To list stopped containers 
```docker ps -aq -f status=exited```

- Mount volume 
```docker run -p 3030:8080 -v /directory/to/mount:/usr/src/app/output -d node-app```

- List the networks 
``` docker network ls```

- Inspect a network
``` docker network inspect <network name>```

- View the ip address of a container ( to be run inside the contaier)
``` ip addr show```


- Ping command ( to be run inside the network)
``` ping -c 2 <ip addr/name of other container>```

- Create new custom network
```docker create network --driver bridge custom-network```

- To start a container on custom network
```docker run --network custom-network -d <image-name> ```
or 
```docker run --name container1 --network custom-network -d <image name>```

- To connect a running container to other network
```docker network connect <network name> <container name/id>```
