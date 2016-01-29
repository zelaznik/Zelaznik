class BlogPost < ActiveRecord::Base
  belongs_to :user, inverse_of: :blog_posts
  validates :user, presence: true
end
