# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "{\"control_plane_id\":\"b843f8df-365c-4b01-81b1-e79e7d5a2ad8\",\"id\":\"df163c03-c7c1-4408-8a04-134aa2dbd5f6\"}"
resource "konnect_gateway_route" "kafka" {
  control_plane_id           = resource.konnect_gateway_control_plane.control_plane.id
  name                       = "Kafka"
  paths                      = ["/"]
  protocols                  = ["http", "https"]
  service = {
    id = resource.konnect_gateway_service.kafka.id
  }
}
