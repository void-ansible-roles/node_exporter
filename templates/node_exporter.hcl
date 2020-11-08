services {
  id = "node_exporter_{{ansible_default_ipv4.macaddress|replace(':', '')}}"
  name = "node-exporter"
  token = "{{node_exporter_consul_token}}"
  address = ""
  port = 9100
  checks = [
    {
      id =  "metrics"
      name = "Metrics on port 9100"
      http = "http://localhost:9100/metrics"
      interval = "10s"
      timeout = "1s"
    }
  ]
}
