class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :zipcode, :string, null: false
    add_column :users, :address, :string, null: false
    add_column :users, :building, :string
  end
end
