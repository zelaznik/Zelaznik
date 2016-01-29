class BlogPost < ActiveRecord::Base
  belongs_to :user, inverse_of: :blog_posts
  validates :user, presence: true

  def most_recent(n)
    @current_user.blog_posts.order_by(pub_date: :desc).last(5).reverse.each
  end
end
