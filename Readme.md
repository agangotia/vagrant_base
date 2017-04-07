# About
This project can be used as a base vagrant image.
This comes with :
java and nodejs installed.
If you want more modules or binaries,
feel free to add it via script.sh.

## Instructions
```
vagrant init centos/7
vagrant plugin install vagrant-vbguest
vagrant up --provider virtualbox
```

## Refrence
[Vagrant image](https://atlas.hashicorp.com/centos/boxes/7)
[Provisioning script](https://gist.github.com/reiz/d67512deee814705134e)
