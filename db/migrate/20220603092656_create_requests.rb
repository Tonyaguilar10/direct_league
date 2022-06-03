class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.boolean :status
      t.text :content
      t.integer :challenger_team_id
      t.integer :opponent_team_id
      t.datetime :proposed_match_date

      t.timestamps
    end
  end
end
