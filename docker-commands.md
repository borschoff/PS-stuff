#run docker session
docker exec -ti {container_id} bash

#Clean all images
docker rmi (docker image ls -q)

#docker wipe
docker system prune
