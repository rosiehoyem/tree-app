json.array!(@species) do |species|
  json.extract! species, :common_name, :scientific_name, :description, :distribution, :range_map
  json.url species_url(species, format: :json)
end
