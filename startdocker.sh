#hack/make.sh binary
docker-machine scp bundles/latest/binary-daemon/docker-proxy test:/tmp
docker-machine ssh test sudo mv /tmp/docker-proxy /usr/local/bin/
docker-machine scp bundles/latest/binary-daemon/dockerd test:/tmp
docker-machine ssh test sudo mv /tmp/dockerd /usr/local/bin/
docker-machine scp bundles/latest/binary-daemon/docker-init test:/tmp
docker-machine ssh test sudo mv /tmp/docker-init /usr/local/bin/
echo "Starting docker................"
docker-machine ssh test sudo dockerd -H tcp://0.0.0.0:2375 -H unix:///var/run/docker.sock -D&

