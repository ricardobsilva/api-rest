json.array!(@api_v1_people) do |api_v1_person|
  json.extract! api_v1_person, :id
  json.url api_v1_person_url(api_v1_person, format: :json)
end
