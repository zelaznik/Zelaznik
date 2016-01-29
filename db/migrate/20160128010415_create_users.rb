class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address
      t.string :phone
      t.binary :resume
      t.string :twitter
      t.string :blog
      t.string :github
      t.string :linkedin

      t.timestamps null: false
    end

    add_index :users, [:first_name, :last_name], unique: true
  end
end
