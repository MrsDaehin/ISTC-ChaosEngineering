VERSION=2.7.3 && helm install chaos-mesh chaos-mesh/chaos-mesh \
  --version $VERSION \
  --namespace chaos-testing \
  --create-namespace \
  --set chaosDaemon.env.DOCKER_API_VERSION="1.40" \
  --set dashboard.securityMode=false \
  --set dashboard.service.nodePort=31111


  # with containerd for killercoda

VERSION=2.7.3 && helm install chaos-mesh chaos-mesh/chaos-mesh \
  --version $VERSION \
  --namespace chaos-testing \
  --create-namespace \
  --set chaosDaemon.runtime=containerd \
  --set chaosDaemon.socketPath=/run/containerd/containerd.sock \
  --set dashboard.securityMode=false \
  --set dashboard.service.nodePort=31111
