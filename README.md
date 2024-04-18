# k8s Playground

## local setup

* `pipenv shell`
* `pipenv install`
* `flask --app app run`

## docker image

* `docker build -t <tag> .`
* `docker run port:port <image-name>`
* `docker push <remote-image-name>:tag`  you need to have previouly a registry created in docker and `<remote-image-name>:tag` has to fit the name there
  
## Using minikube to run the image (directly)

Check [minikubbe documentation](https://minikube.sigs.k8s.io/docs/handbook/control) for a quickstart:

Excerpt

* Create a Deployment from an image (docker registry)
`kubectl create deployment hello-minikube --image=datracka/python-app-for-k8s:0.0.1` [docker registry](https://hub.docker.com/repository/docker/datracka/python-app-for-k8s/general)

* Expose the deployment
`kubectl expose deployment hello-minikube --type=NodePort --port=80`

> port 80 because docker image exposes port 80 internally

* Open the exposed endpoint in the browser
`minikube service hello-minikube`

## Using Minikube to run the image through manifest

// pending
