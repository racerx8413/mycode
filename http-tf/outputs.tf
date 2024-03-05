# produces an output value named "space_heroes"
output "pokemon" {
  description = "API that documents folks in space"
  value       = data.http.pokemon.response_body
}

# produces legal JSON output value named "space_heroes_json"
output "pokemon_json" {
  description = "API that pulls info about Pikachu"
  value       = jsondecode(data.http.pokemon.response_body)    // note the jsondecode()
}    
