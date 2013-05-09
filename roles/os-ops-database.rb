name "os-ops-database"
description "Currently MySQL Server (non-ha)"
run_list(
  "role[os-base]",
  "recipe[openstack-ops-database::server]"
)

override_attributes(
  "openstack" => {
    "database" => {
      "role" => "os-ops-database"
    }
  }
)

