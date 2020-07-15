# Article resources for learnk8s

This repository contains resources referred to in the article "Enforcing policies and governance for Kubernetes workloads"
on learnk8s.io published [here](https://learnk8s.io/kubernetes-policies).

## Key resources

- [test-data](./test-data) contains deployment YAML manifests referred to in the article
- [conftest-checks](./conftest-checks) contains example checks for `conftest`
- [gatekeeper-manifests](./gatekeeper-manifests) contains example constraint templates and constraints for gatekeeper


## Helpers

If you are using OS X, the Bash script, [download_bins_osx.sh](./download_bins_linux.sh) will
create a sub-directory `binaries` and download `confetest` so that you can experiment with the test data
and follow along with the article. The [install_gk.sh](./install_gk.sh) script will setup Gatekeeper
in your cluster.
