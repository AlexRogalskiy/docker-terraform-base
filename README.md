# Docker Terraform Base

Source code for the base docker image of https://github.com/oam-dev/docker-terraform

# Image build

In directory 

- [optional] Sync .terraform.d 

```shell

ossutil sync oss://docker-terraform . -f
```

- Add more providers or update a provider

- Package .terraform.d

```
tar -czvf .terraform.d.tar.gz .terraform.d
```

- Push the package

```shell

```
