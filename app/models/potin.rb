class Potin < ApplicationRecord
  belongs_to :city
  belongs_to :user
  has_many :tags
  has_many :likes
  has_many :comments
end
