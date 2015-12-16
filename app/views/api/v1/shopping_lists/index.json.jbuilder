json.array!(@api_v1_shopping_lists) do |api_v1_shopping_list|
  json.extract! api_v1_shopping_list, :id
  json.url api_v1_shopping_list_url(api_v1_shopping_list, format: :json)
end
