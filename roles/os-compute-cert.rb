name "os-compute-cert"
description "OpenStack Compute Cert service"
run_list(
  "role[os-base]",
  "recipe[os-compute::cert]"
)
