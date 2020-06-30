package main

deny[msg] {
  input.kind == "Deployment"  
  image := input.spec.template.spec.containers[_].image
  not count(split(image, ":")) == 2
  msg := sprintf("image '%v' doesn't specify a valid tag", [image])
}


deny[msg] {
  input.kind == "Deployment"  
  image := input.spec.template.spec.containers[_].image
  endswith(image, "latest")  
  msg := sprintf("image '%v' uses latest tag", [image])
}


deny[msg] {
  input.kind == "Deployment"  
  image := input.spec.template.spec.initContainers[_].image
  not count(split(image, ":")) == 2
  msg := sprintf("image '%v' doesn't specify a valid tag", [image])
}


deny[msg] {
  input.kind == "Deployment"  
  image := input.spec.template.spec.initContainers[_].image
  endswith(image, "latest")  
  msg := sprintf("image '%v' uses latest tag", [image])
}
