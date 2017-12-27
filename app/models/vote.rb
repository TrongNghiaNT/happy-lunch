class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :food, counter_cache: true
end
