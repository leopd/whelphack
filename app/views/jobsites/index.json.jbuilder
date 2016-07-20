json.array!(@jobsites) do |jobsite|
  json.extract! jobsite, :id, :name, :address, :zipcode, :lat, :long
  json.url jobsite_url(jobsite, format: :json)
end
