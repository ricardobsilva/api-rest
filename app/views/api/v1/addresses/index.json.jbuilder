json.array!(@api_v1_addresses) do |api_v1_address|
  json.extract! api_v1_address, :id
  json.url api_v1_address_url(api_v1_address, format: :json)
end
