json.array!(@house_lists) do |house_list|
  json.extract! house_list, :id, :city, :state, :zipCode, :address
  json.url house_list_url(house_list, format: :json)
end
