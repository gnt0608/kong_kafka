resource "konnect_gateway_service" "kafka" {
  control_plane_id   = resource.konnect_gateway_control_plane.control_plane.id
  host               = "localhost"
  name               = "kafka-consume"
  path               = "/"
  port               = 80
  protocol           = "http"
}
