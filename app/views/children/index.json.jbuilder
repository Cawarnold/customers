json.array!(@children) do |child|
  json.extract! child, :id, :user_id, :title, :first_name, :last_name, :company, :address1, :address2, :zip_post_code
  json.url child_url(child, format: :json)
end
