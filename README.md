# Docker Terraform Base

Source code for the base docker image of https://github.com/oam-dev/docker-terraform

# Image build

Run `git lfs track ".terraform.d/**"` to store all large files in Github.


- Add more providers or update a provider

- Push changes to GitHub

- Push the package

```shell
docker build -t zzxwill/docker-terraform-base:$Tag .
docker push zzxwill/docker-terraform-base:$Tag
```
