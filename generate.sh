#! /bin/sh
set -e


# AKS supported versions 2021-05-07
# 1.19.9, 1,19.7, 1.18.17, 1.18.14

declare -a all=(
  v1.24.0
  v1.23.0
  v1.22.0
  v1.21.0
  v1.20.9
  v1.20.0
  v1.19.9
  v1.19.7
  v1.18.17
  v1.18.14
)

for version in "${all[@]}"
do
  schema="https://raw.githubusercontent.com/kubernetes/kubernetes/${version}/api/openapi-spec/swagger.json"
  prefix="https://kubernetesjsonschema.dev/${version}/_definitions.json"

  openapi2jsonschema -o "${version}-standalone-strict" --expanded --kubernetes --stand-alone --strict "${schema}" &
  openapi2jsonschema -o "${version}-standalone" --expanded --kubernetes --stand-alone "${schema}" &
  openapi2jsonschema -o "${version}-local" --expanded --kubernetes "${schema}" &
  openapi2jsonschema -o "${version}" --expanded --kubernetes --prefix="${prefix}" "${schema}" &
  openapi2jsonschema -o "${version}-standalone-strict" --kubernetes --stand-alone --strict "${schema}" &
  openapi2jsonschema -o "${version}-standalone" --kubernetes --stand-alone "${schema}" &
  openapi2jsonschema -o "${version}-local" --kubernetes "${schema}" &
  openapi2jsonschema -o "${version}" --kubernetes --prefix="${prefix}" "${schema}" &
  wait
done