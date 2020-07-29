<h1 align="center">Welcome to role kubeadm 👋</h1>
<p>
  <a href="https://gitlab.com/estudosdevops/ansible/roles/kubeadm/-/commits/master">
    <img alt="pipeline status" src="https://gitlab.com/estudosdevops/ansible/roles/kubeadm/badges/master/pipeline.svg" /></a>
  <img alt="Version" src="https://img.shields.io/badge/version-0.1.0-blue.svg?cacheSeconds=2592000" />
  <a href="https://gitlab.com/estudosdevops/ansible/roles/kubeadmin/-/blob/master/README.md" target="_blank">
    <img alt="Documentation" src="https://img.shields.io/badge/documentation-yes-brightgreen.svg" />
  </a>
  <a href="https://pt.wikipedia.org/wiki/Licen%C3%A7a_MIT" target="_blank">
    <img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-yellow.svg" />
  </a>
  <a href="https://twitter.com/fcruzcoelho" target="_blank">
    <img alt="Twitter: fcruzcoelho" src="https://img.shields.io/twitter/follow/fcruzcoelho.svg?style=social" />
  </a>
</p>

> Install kubernetes packages

## Install

- requirements.yml

```yml
---
- name: kubeadm
  src: fabiocruzcoelho.kubeadm
```

```sh
ansible-galaxy install -r requirements.yml
```

## Role Variables

Available variables are along with default values (see defaults/main.yml):

## Examplo playbook

```yml
- name: Install kubadm
  hosts: all

  roles:
    - kubeadmin
```

## Run tests

> Dependence

- [ansible-role-tester](https://github.com/fubarhouse/ansible-role-tester)

```sh
git clone https://gitlab.com/estudosdevops/ansible/roles/kubeadm.git
```

```sh
make test
```

## Author

👤 **Fabio Coelho**

* Twitter: [@fcruzcoelho](https://twitter.com/fcruzcoelho)
* GitLab: [@fabiocruzcoelho](https://gitlab.com/fabiocruzcoelho)
* LinkedIn: [@fcruzcoelho](https://linkedin.com/in/fcruzcoelho)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!<br />Feel free to check [issues page](https://gitlab.com/estudosdevops/ansible/roles/kubeadm/-/issues).

## Show your support

Give a ⭐️ if this project helped you!

## 📝 License

Copyright © 2020 [Fabio Coelho](https://github.com/fabiocruzcoelho).<br />
This project is [MIT](https://pt.wikipedia.org/wiki/Licen%C3%A7a_MIT) licensed.

***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_
