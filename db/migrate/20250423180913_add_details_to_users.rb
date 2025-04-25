class AddDetailsToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :username, :string, null: false
    add_column :users, :fullname, :string, null: false
    add_column :users, :usertype, :string, null: false
    add_column :users, :branches, :string, array: true, default: [], null: false
  end
end
