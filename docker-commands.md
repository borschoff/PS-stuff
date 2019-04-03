Run Ubuntu env
```
docker run -t -i ubuntu /bin/bash
```

Save state
```
docker commit --change "!!!!" <ID>  user/img_name:version
```

run docker session
```
docker exec -ti {container_id} bash
```

Get container IP
```
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' container_name_or_id
```


Clean all images
```
docker rmi (docker image ls -q)
```

docker wipe
```
docker system prune
```
