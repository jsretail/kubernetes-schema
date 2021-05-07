# Kubernetes Schema for KubeVal.

Manually generated Kubernetes schema for use with KubeVal.

Original repo:
https://github.com/instrumenta/kubernetes-json-schema/

Generate folders with [./generate.sh](./generate.sh)

Use with Kubeval

```sh
kubeval \
  --schema-location https://raw.githubusercontent.com/thunter1000/kubernetes-schema/main \
  --kubernetes-version v1.19.9 \
  --strict \
  ${yamlToCheck}
```