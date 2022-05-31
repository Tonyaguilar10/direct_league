class AddAttributesToMatches < ActiveRecord::Migration[6.1]
  def change
    add_column :matches, :match_size, :integer
    add_column :matches, :home_goals, :integer
    add_column :matches, :away_goals, :integer
  end
end
