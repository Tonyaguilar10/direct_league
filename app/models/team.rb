class Team < ApplicationRecord
  belongs_to :user
  has_many :memberships, dependent: :destroy
  validates :team_name, presence: true
  validates :country, presence: true
  validates :city, presence: true
  validates :zip_code, presence: true
  validates :size, presence: true, numericality: { greater_than: 0 }
  geocoded_by :map_address
  after_validation :geocode

  def map_address
    [self.city, self.zip_code].compact.join(", ")
  end

  def my_matches
    matches = []
    matches_created = Match.joins(:home_team).where(home_team: self)
    # matches_created = Match.all.where(:home_team == team || :away_team == team)
    unless matches_created.empty?
      matches_created.each do |match|
        matches << match
      end
    end

    matches_created = Match.joins(:away_team).where(away_team: self)
    # matches_created = Match.all.where(:away_team == team || :away_team == team)
    unless matches_created.empty?
      matches_created.each do |match|
        matches << match
      end
    end
    matches.uniq
  end

  def self.destroy_all
    Team.all.each do |team|
      team.my_matches.destroy_all
      team.destroy
    end
  end
end
