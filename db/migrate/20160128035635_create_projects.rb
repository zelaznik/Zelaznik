class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :user_id, null: :false
      t.string :title, null: :false
      t.string :summary
      t.string :image_url
      t.string :live
      t.string :github

      t.timestamps null: false
    end

    add_foreign_key :projects, :users, cascade: :delete
    add_index :projects, :user_id
  end
end
