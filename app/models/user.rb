class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :memberships, dependent: :destroy
  has_many :teams, dependent: :destroy
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true
  validates :age, presence: true
  validates :gender, presence: true
  validates :country, presence: true
  validates :zip_code, presence: true
end
