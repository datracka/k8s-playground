# k8s Playground

## Using Directly Minikube

Check [minikubbe documentation](https://minikube.sigs.k8s.io/docs/handbook/control) for a quickstart:

Excerpt

* Create a Deployment from an image (docker registry)
`kubectl create deployment hello-minikube --image=datracka/python-app-for-k8s:0.0.1` [docker registry](https://hub.docker.com/repository/docker/datracka/python-app-for-k8s/general)

* Expose the deployment
`kubectl expose deployment hello-minikube --type=NodePort --port=80`

> port 80 because docker image exposes port 80 internally

* Open the exposed endpoint in the browser
`minikube service hello-minikube`
