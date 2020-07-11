package main

deny[msg] {
  input.kind == "Deployment"  

  required := {"app", "project"}
  provided := {label | input.metadata.labels[label]}
  missing := required - provided
  
  count(missing) > 0
  msg = sprintf("you must provide labels: %v", [missing])
}
