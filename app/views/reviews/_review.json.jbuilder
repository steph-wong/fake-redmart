json.extract! review, :id, :content, :created_at, :updated_at
json.url user_url(review, format: :json)
