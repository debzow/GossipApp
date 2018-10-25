class User < ApplicationRecord
  belongs_to :city
  has_many :potins
  has_many :likes
  has_many :comments
  has_many :critics
  has_many :tags
  has_many :senders, class_name:"PrivateMessage"
  has_many :recipients, class_name:"PrivateMessage"
end
