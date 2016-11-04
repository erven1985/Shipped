class AddNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :username, :string
    add_column :users, :dob, :string
    add_column :users, :gender, :string
    add_column :users, :user_type, :string
  end

end
