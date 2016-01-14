json.array!(@claims) do |claim|
  json.extract! claim, :id, :name, :surname
  json.url claim_url(claim, format: :json)
end
