# Kubernetes Schema for KubeVal.

Manually generated Kubernetes schema for use with KubeVal.

Original repo:
https://github.com/instrumenta/kubernetes-json-schema/

Generate JSON schema with [./generate.sh](./generate.sh)
> 📝 Requires sh, Python, [openapi2jsonschema](https://github.com/instrumenta/openapi2jsonschema)

Use with Kubeval

```sh
kubeval \
  --schema-location https://raw.githubusercontent.com/thunter1000/kubernetes-schema/main \
  --kubernetes-version 1.19.9 \
  --strict \
  ${yamlToCheck}
```

Sparse Clone
```sh
gh repo clone thunter1000/kubernetes-schema -- \
--depth 1 \
--filter=blob:none \
--sparse
```
