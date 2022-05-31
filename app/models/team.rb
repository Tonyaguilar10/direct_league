class Team < ApplicationRecord
  belongs_to :user
  has_many :matches
  has_many :memberships
  validates :team_name, presence: true
  validates :country, presence: true
  validates :city, presence: true
  validates :zip_code, presence: true
  validates :size, presence: true, numericality: { greater_than: 0 }
end
