class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.integer :home_team_id
      t.integer :away_team_id
      t.datetime :match_date
      t.text :description
      t.integer :minutes_duration
      t.references :field, null: false, foreign_key: true

      t.timestamps
    end
  end
end
