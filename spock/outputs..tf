# produces an output value named "space_heroes"
output "spoke" {
  description = "spock"
  value       = data.http.spoke.response_body
}
