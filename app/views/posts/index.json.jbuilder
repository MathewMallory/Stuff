json.array!(@posts) do |post|
  json.extract! post, :id, :title, :body, :username, :string
  json.url post_url(post, format: :json)
end
