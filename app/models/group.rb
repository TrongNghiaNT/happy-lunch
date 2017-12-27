class Group < ApplicationRecord
  has_many :orders
  has_and_belongs_to_many :users

  validates :name, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 255 }
  validates :owner_id, presence: true
end
