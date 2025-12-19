# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

resource "konnect_gateway_plugin_kafka_upstream" "kafka_upstream" {
  config = {
    bootstrap_servers = [
      {
        host = "kafka"
        port = 29092
      },
    ]
    timeout          = 10000
    topic            = "test-topic"
    topics_query_arg = null
  }
  control_plane_id = resource.konnect_gateway_control_plane.control_plane.id
  protocols        = ["grpc", "grpcs", "http", "https"]
  route = {
    id = resource.konnect_gateway_route.kafka.id
  }
}

resource "konnect_gateway_plugin_kafka_consume" "kafka_consume" {
  config = {
    bootstrap_servers = [
      {
        host = "kafka"
        port = 29092
      },
    ]
    timeout           = 10000
    topics             = [{name = "test-topic"}]
    auto_offset_reset = "latest"
    commit_strategy   = "auto"
    mode              = "http-get"
  }
  control_plane_id = resource.konnect_gateway_control_plane.control_plane.id
  protocols        = ["http", "https"]
  route = {
    id = resource.konnect_gateway_route.kafka_consume.id
  }
}
