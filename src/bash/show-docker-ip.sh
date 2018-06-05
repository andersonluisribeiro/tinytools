

default_network="$1"
docker_containers=$(docker ps  --format '{{.Names}}')

echo 
for i in ${docker_containers}; do
    ip=$(docker inspect ${i} --format "{{.NetworkSettings.Networks.${default_network}.IPAddress}}")
    echo "${i}: ${ip}"
done;