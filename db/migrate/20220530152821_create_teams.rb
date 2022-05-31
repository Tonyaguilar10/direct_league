class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :team_name
      t.integer :team_wins, default: 0
      t.integer :team_defeats, default: 0
      t.integer :team_draws, default: 0
      t.string :team_banner
      t.string :team_logo
      t.string :country
      t.string :city
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
