class CreateFields < ActiveRecord::Migration[6.1]
  def change
    create_table :fields do |t|
      t.string :name
      t.string :city
      t.string :street_name
      t.string :country
      t.integer :street_number
      t.integer :zip_code
      t.integer :telephone
      t.integer :price

      t.timestamps
    end
  end
end
