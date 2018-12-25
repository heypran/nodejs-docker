
Build the image using 
``` docker build -t  node-app .```

Now view image using 
``` docker images```

Run the image 
``` docker run -p 3030:8080 -d node-app```

View running images and container ids
```docker ps```

To go inside the container 
``` docker exec -it <container id> /bin/bash```

