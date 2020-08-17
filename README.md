<h1 align="center">Welcome to kubernetes 👋</h1>
<p>
  <a href="https://gitlab.com/estudosdevops/kubernetes/-/commits/master">
  <img alt="pipeline status" src="https://gitlab.com/estudosdevops/kubernetes/badges/master/pipeline.svg" /></a>
  <img alt="Version" src="https://img.shields.io/badge/version-0.1.0-blue.svg?cacheSeconds=2592000" />
  </a>
  <a href="https://gitlab.com/estudosdevops/kubernetes/-/blob/master/README.md" target="_blank">
    <img alt="Documentation" src="https://img.shields.io/badge/documentation-yes-brightgreen.svg" />
  </a>
  <a href="https://pt.wikipedia.org/wiki/Licen%C3%A7a_MIT" target="_blank">
    <img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-yellow.svg" />
  </a>
  <a href="https://twitter.com/fcruzcoelho" target="_blank">
    <img alt="Twitter: fcruzcoelho" src="https://img.shields.io/twitter/follow/fcruzcoelho.svg?style=social" />
  </a>
</p>

> Deploy a simple cluster Kubernetes with kubeadm on instances `GCP`, `AWS`, and  `On-Premises` for studies.

## Table of contents

- [Usage](#usage)
  - [Installation](#Install)
- [Provider](#provider)
  - [Virtualbox](https://gitlab.com/estudosdevops/kubernetes/-/blob/master/virtualbox/README.md)

## Install

> The playbook deploy um cluster Kubernetes on version `1.18`

- Prerequisites
  - [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) >= v2.9.x
  - [Community.kubernetes](https://github.com/ansible-collections/community.kubernetes) >= v1.0.0

> Hardware requirements instances/VM's

| Provider              |   Master/Worker Instance Type   |     Linux OS |
| --------------------- | :-----------------------------: | -----------: |
| Amazon Web Services   | t2.large/t3.large (2 vCPU, 4GB) | Ubuntu 18.04 |
| Google Cloud Platform |      custom (2 vCPU, 4GB)       | Ubuntu 18.04 |
| On-Premises           |           2 vCPU, 5GB           | Ubuntu 18.04 |

```sh
git clone https://gitlab.com/estudosdevops/kubernetes.git
```

## Usage

> With the instances or VMs created and properly configured, and the inventory configured according to the [sample.ini](https://gitlab.com/estudosdevops/kubernetes/-/blob/master/inventory/sample.ini)

```sh
# Example of usage with instance GCP, AWS
make run playbook=cluster  env=inventory/sample.ini args='-e "provider=<cloud_name> kube_master_ip=<ipaddress>"' tag=kubeadm,cluster
```

```sh
# Example of usage with VM's (In test)
make run playbook=cluster  env=inventory/sample.ini args='-e "provider=<vmware> kube_master_ip=<ipaddress>"' tag=kubeadm,cluster
```

## Run tests

> To test the playbook you can run a dry-run first.

```sh
make dry-run playbook=cluster  env=inventory/sample.ini args='-e "provider=<provider_name> kube_master_ip=<ipaddress>"' tag=kubeadm,cluster
```

```sh
kubectl get nodes
NAME          STATUS   ROLES    AGE    VERSION
kube-master   Ready    master   157m   v1.18.6
kube-node1    Ready    <none>   157m   v1.18.6
kube-node2    Ready    <none>   157m   v1.18.6
kube-node3    Ready    <none>   157m   v1.18.6
```

```sh
kubectl get po --all-namespaces -o wide
NAMESPACE     NAME                                  READY   STATUS    RESTARTS   AGE    IP              NODE          NOMINATED NODE   READINESS GATES
kube-system   coredns-66bff467f8-bt98x              1/1     Running   0          160m   10.244.1.2      kube-node3    <none>           <none>
kube-system   coredns-66bff467f8-wqfkj              1/1     Running   0          160m   10.244.0.2      kube-master   <none>           <none>
kube-system   etcd-kube-master                      1/1     Running   0          160m   10.158.15.200   kube-master   <none>           <none>
kube-system   kube-apiserver-kube-master            1/1     Running   0          160m   10.158.15.200   kube-master   <none>           <none>
kube-system   kube-controller-manager-kube-master   1/1     Running   0          160m   10.158.15.200   kube-master   <none>           <none>
kube-system   kube-flannel-ds-amd64-cvnqw           1/1     Running   0          160m   10.158.15.204   kube-node3    <none>           <none>
kube-system   kube-flannel-ds-amd64-gxjkz           1/1     Running   0          159m   10.158.15.202   kube-node1    <none>           <none>
kube-system   kube-flannel-ds-amd64-jck9l           1/1     Running   0          160m   10.158.15.200   kube-master   <none>           <none>
kube-system   kube-flannel-ds-amd64-sb4fq           1/1     Running   0          159m   10.158.15.203   kube-node2    <none>           <none>
kube-system   kube-proxy-czjhn                      1/1     Running   0          159m   10.158.15.202   kube-node1    <none>           <none>
kube-system   kube-proxy-f8qx7                      1/1     Running   0          160m   10.158.15.204   kube-node3    <none>           <none>
kube-system   kube-proxy-m8kzz                      1/1     Running   0          159m   10.158.15.203   kube-node2    <none>           <none>
kube-system   kube-proxy-t9gvf                      1/1     Running   0          160m   10.158.15.200   kube-master   <none>           <none>
kube-system   kube-scheduler-kube-master            1/1     Running   0          160m   10.158.15.200   kube-master   <none>           <none>
```

## Author

👤 **Fabio Coelho**

* Twitter: [@fcruzcoelho](https://twitter.com/fcruzcoelho)
* Github: [@fabiocruzcoelho](https://github.com/fabiocruzcoelho)
* LinkedIn: [@fcruzcoelho](https://linkedin.com/in/fcruzcoelho)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!<br />Feel free to check [issues page](https://gitlab.com/estudosdevops/kubernetes/-/issues).

## Show your support

Give a ⭐️ if this project helped you!

## 📝 License

Copyright © 2020 [Fabio Coelho](https://github.com/fabiocruzcoelho).<br />
This project is [MIT](https://pt.wikipedia.org/wiki/Licen%C3%A7a_MIT) licensed.

***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_
