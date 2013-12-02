json.array!(@trees) do |tree|
  json.extract! tree, :address, :latitude, :longitude, :species
  json.url tree_url(tree, format: :json)
end
