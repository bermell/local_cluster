# Full configuration options can be found at https://www.nomadproject.io/docs/configuration

data_dir  = "/opt/nomad/data"
bind_addr = "0.0.0.0"

server {
  # license_path is required as of Nomad v1.1.1+
  #license_path = "/opt/nomad/license.hclic"
  enabled          = true
  bootstrap_expect = 1
}

client {
  enabled = true
  servers = ["127.0.0.1"]
}

telemetry {
  collection_interval = "1s"
  disable_hostname = true
  filter_default = true
  prometheus_metrics = true 
  publish_allocation_metrics = true
  publish_node_metrics = false
}

