class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.string :image_url

      t.timestamps null: false
    end
  end
end
