json.array!(@pokemons) do |pokemon|
  json.extract! pokemon, :id, :health, :attack, :defense, :special_attack, :special_defense, :speed, :title
  json.url pokemon_url(pokemon, format: :json)
end
