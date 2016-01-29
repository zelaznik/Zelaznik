class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.integer :user_id
      t.string :guid
      t.string :title
      t.text :description
      t.string :link
      t.datetime :pub_date

      t.timestamps null: false
    end

    add_foreign_key :blog_posts, :users, cascade: :delete
    add_index :blog_posts, :user_id
  end
end
