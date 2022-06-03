class Request < ApplicationRecord
  belongs_to :challenger_team, foreign_key: :challenger_team_id, class_name: 'Team', primary_key: :id, optional: false # @match.home_team => Team instance
  belongs_to :opponent_team, foreign_key: :opponent_team_id, class_name: 'Team', primary_key: :id, optional: false # @match.away_team => Team instance
end
