class Match < ApplicationRecord
  belongs_to :field
  belongs_to :home_team, foreign_key: :home_team_id, class_name: 'Team', primary_key: :id, optional: false # @match.home_team => Team instance
  belongs_to :away_team, foreign_key: :away_team_id, class_name: 'Team', primary_key: :id, optional: true # @match.away_team => Team instance
end
