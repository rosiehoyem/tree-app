json.array!(@locations) do |location|
  json.extract! location, :city, :state, :bioregion, :political_region
  json.url location_url(location, format: :json)
end
