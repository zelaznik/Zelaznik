json.array!(@blog_posts) do |blog_post|
  json.extract! blog_post, :id, :user_id, :guid, :title, :description, :link, :pub_date
  json.url blog_post_url(blog_post, format: :json)
end
