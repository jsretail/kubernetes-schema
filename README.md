# Kubernetes Schema for KubeVal.

Manually generated Kubernetes schema for use with KubeVal.

Original repo:
https://github.com/instrumenta/kubernetes-json-schema/

Schema can be generated with the following command.

```sh
k8s_version="v1.19.9"
schema="https://raw.githubusercontent.com/kubernetes/kubernetes/${k8s_version}/api/openapi-spec/swagger.json"

openapi2jsonschema -o "${k8s_version}-standalone-strict" --expanded --kubernetes --stand-alone --strict $schema
```

> 📝 Requires Python and [openapi2jsonschema](https://github.com/instrumenta/openapi2jsonschema)