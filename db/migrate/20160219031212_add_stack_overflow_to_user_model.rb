class AddStackOverflowToUserModel < ActiveRecord::Migration
  def change
    add_column :users, :stack_overflow, :string
  end
end
