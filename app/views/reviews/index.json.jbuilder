json.array!(@reviews) do |review|
  json.extract! review, :id, :title, :details, :actual_wage, :fair_wage, :when, :jobsite_id
  json.url review_url(review, format: :json)
end
