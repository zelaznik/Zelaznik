json.array!(@skills) do |skill|
  json.extract! skill, :id, :user_id, :name, :image_url
  json.url skill_url(skill, format: :json)
end
