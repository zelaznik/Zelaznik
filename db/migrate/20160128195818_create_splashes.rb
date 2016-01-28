class CreateSplashes < ActiveRecord::Migration
  def change
    create_table :splashes do |t|
      t.integer :user_id, null: false
      t.integer :rank, null: false
      t.string :p
      t.string :h2

      t.timestamps null: false
    end

    add_foreign_key :splashes, :users, cascade: :delete
    add_index :splashes, [:user_id, :p, :h2], unique: true
    add_index :splashes, [:user_id, :rank], unique: true
    add_index :splashes, :user_id
  end
end
