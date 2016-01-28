class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :first_name
      t.text :last_name
      t.text :email
      t.text :address
      t.text :phone
      t.binary :resume
      t.text :twitter
      t.text :blog
      t.text :github
      t.text :linkedin

      t.timestamps null: false
    end
  end
end
