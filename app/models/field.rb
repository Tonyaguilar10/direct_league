class Field < ApplicationRecord
  has_many :matches
  has_many :requests
end
