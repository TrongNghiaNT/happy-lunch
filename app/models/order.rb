class Order < ApplicationRecord
  belongs_to :group
  has_many :foods
  has_and_belongs_to_many :users

  validates :description, presence: true
  validates :lunch_time, presence: true
  validates :place, presence: true
  validate :validate_lunch_time

  private

  def validate_lunch_time
    return unless lunch_time < Time.zone.now
    errors.add :lunch_time, I18n.t('groups.valid_lunch_time')
  end
end
