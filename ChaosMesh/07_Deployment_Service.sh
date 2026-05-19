#It will take a moment to start. You can see the application status and the Pods status will soon report Running in the default namespace:
kubectl apply -f web-show-deployment.yaml && kubectl apply -f web-show-service.yaml && kubectl get deployments,pods,services

# we can scale it to more replicas
kubectl apply -f podtato-head-web-app.yaml
kubectl scale deployments/helloservice --replicas=2 -n demospace

 # deploy cadvisor to monitor the resource usage of the cluster
kubectl apply -f cadvisor.yaml

# check the daemonset and the service
kubectl get daemonset -n cadvisor


#port forward the cadvisor service to access it from the browser
kubectl port-forward -n cadvisor pods/$(kubectl get pods -o jsonpath="{.items[0].metadata.name}" -n cadvisor) 8080