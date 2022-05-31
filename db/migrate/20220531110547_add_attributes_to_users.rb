class AddAttributesToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :last_name, :string
    add_column :users, :username, :string
    add_column :users, :avatar, :string
    add_column :users, :gender, :string
    add_column :users, :country, :string
    add_column :users, :description, :string
    add_column :users, :available_days, :string
    add_column :users, :age, :integer
    add_column :users, :zip_code, :integer
  end
end
