class AddAttributesToTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :zip_code, :integer
    add_column :teams, :size, :integer
  end
end
