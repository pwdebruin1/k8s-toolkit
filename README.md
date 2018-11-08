# k8s-toolkit

This image contains some useful tools that you may require when troubleshooting various things in a Kubernetes cluster.

List of tools:
curl
nc/netcat
dig/host

Usage:
You can either execute a tool once and let the pod or deployment complete and clean out, example:

`kubectl run --image=pwdebruin/k8s-toolkit k8s-toolkit --rm=true -it -- curl google.com`

Or you can deploy a pod/deployment with the container and execute commands, example:

```cat <<EOF | kubectl create -f -
apiVersion: v1
kind: Pod
metadata:
  name: k8s-toolkit
  namespace: default
spec:
  containers:
  - name: k8s-toolkit
    image: pwdebruin/k8s-toolkit
EOF```

`kubectl exec k8s-toolkit -it -- dig google.com`

Please note the deployment will complete in 360 seconds (5 min).
