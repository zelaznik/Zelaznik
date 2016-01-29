class RenameBlogPostDescFieldToSummary < ActiveRecord::Migration
  def up
    execute "ALTER TABLE blog_posts RENAME column description to summary"
  end

  def down
    execute "ALTER TABLE blog_posts RENAME column summary to description"
  end

end
