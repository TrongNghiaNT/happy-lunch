class Food < ApplicationRecord
  belongs_to :order
  has_many :votes

  validates :name, presence: true, length: { maximum: 50 }
end
