
## Basic k8s commands

# create pod using manifest file
````
vim pod.yaml
````
````
kubectl apply -f pod.yaml
````
----
# create pod 
````
kubectl run  podname   --image=nginx
````
# list pods 
````
kubectl get pods
kubectl get pods -o wide 
````
# view pod info 
````
kubectl describe pod podname 
````
# login into pod
````
kubectl exec -it podname  -- bash
````
# check logs 
````
kubectl logs podname
````

# create service to access app
````
kubectl expose pod podname --port=80 --target-port=80 --type=NodePort 
````
# list services
````
kubectl get svc
````
# delete svc
````
kubectl delete svc svcname
````

# delete pod
````
kubectl delete pod podname
````
