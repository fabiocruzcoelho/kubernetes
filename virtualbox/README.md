<h1 align="center">Welcome to Provider Virtualbox 👋</h1>
<p>
  <img alt="Version" src="https://img.shields.io/badge/version-0.1.0-blue.svg?cacheSeconds=2592000" />
  <a href="https://gitlab.com/estudosdevops/kubernetes/-/blob/master/virtualbox/README.md" target="_blank">
    <img alt="Documentation" src="https://img.shields.io/badge/documentation-yes-brightgreen.svg" />
  </a>
  <a href="https://pt.wikipedia.org/wiki/Licen%C3%A7a_MIT" target="_blank">
    <img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-yellow.svg" />
  </a>
  <a href="https://twitter.com/fcruzcoelho" target="_blank">
    <img alt="Twitter: fcruzcoelho" src="https://img.shields.io/twitter/follow/fcruzcoelho.svg?style=social" />
  </a>
</p>

> Deploy a simple cluster Kubernetes with kubeadm locally.

## Install

> To implement the local kubernetes cluster, the following requirements are required.

- Prerequisites
  - [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
  - [Virtualbox](https://www.virtualbox.org/wiki/Linux_Downloads)
  - [Vagrant](https://www.vagrantup.com/docs/installation)

> For proper performance, a minimum Hardware requirement is recommended.

| Processor |  RAM  |    HD    |
| --------- | :---: | -------: |
| i5/i7     |  12G  | SSD 120G |

## Customize Vagrantfile

By default, Vagrantfile uses a box kubeadm this have all packages installed and configured to provision a local cluster, You can override the default settings either by directly modifying the Vagrantfile or through an override file. In the same directory as the Vagrantfile, create a folder called vagrant and create config.rb file in it. An example of how to configure this file is given below

```rb
# Setting for VirtualBox VMs
$instance_name_prefix = "kub"
$vm_cpus = 1
$num_instances = 3
$os = "ubuntu1804"
$subnet = "10.0.20"
$network_plugin = "flannel"
$inventory = ""
```

```sh
git clone https://gitlab.com/estudosdevops/kubernetes.git
```

## Usage

> Example use of Vagrant

```sh
vagrant up
```

- If a vagrant run failed and you've made some changes to fix the issue causing the fail, here is how you would re-run ansible:

```sh
ansible-playbook -i .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory cluster.yml -vvv
```

## Run tests

```sh
vagrant ssh kube-1
```

```sh
 kubectl get nodes
NAME     STATUS   ROLES    AGE   VERSION
kube-1   Ready    master   53s   v1.18.6
kube-2   Ready    <none>   24s   v1.18.6
kube-3   Ready    <none>   24s   v1.18.6
```

```sh
kubectl get po --all-namespaces -o wide
NAMESPACE     NAME                             READY   STATUS    RESTARTS   AGE   IP           NODE     NOMINATED NODE   READINESS GATES
kube-system   coredns-66bff467f8-lbgjf         1/1     Running   0          62s   10.244.1.2   kube-2   <none>           <none>
kube-system   coredns-66bff467f8-n99db         1/1     Running   0          62s   10.244.2.2   kube-3   <none>           <none>
kube-system   etcd-kube-1                      1/1     Running   0          73s   10.0.2.15    kube-1   <none>           <none>
kube-system   kube-apiserver-kube-1            1/1     Running   0          73s   10.0.2.15    kube-1   <none>           <none>
kube-system   kube-controller-manager-kube-1   1/1     Running   0          73s   10.0.2.15    kube-1   <none>           <none>
kube-system   kube-flannel-ds-amd64-8xdd5      1/1     Running   0          54s   10.0.2.15    kube-3   <none>           <none>
kube-system   kube-flannel-ds-amd64-hz4xw      1/1     Running   0          62s   10.0.2.15    kube-1   <none>           <none>
kube-system   kube-flannel-ds-amd64-ppmtc      1/1     Running   0          54s   10.0.2.15    kube-2   <none>           <none>
kube-system   kube-proxy-42l5x                 1/1     Running   0          54s   10.0.2.15    kube-2   <none>           <none>
kube-system   kube-proxy-kdcs7                 1/1     Running   0          54s   10.0.2.15    kube-3   <none>           <none>
kube-system   kube-proxy-msljq                 1/1     Running   0          62s   10.0.2.15    kube-1   <none>           <none>
kube-system   kube-scheduler-kube-1            1/1     Running   0          73s   10.0.2.15    kube-1   <none>           <none>
```

## Destroy

```sh
vagrant destroy
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