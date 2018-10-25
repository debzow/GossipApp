class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :potin
  has_many :critics
end
