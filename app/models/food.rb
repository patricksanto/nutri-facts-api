class Food < ApplicationRecord
  belongs_to :food_group

  validates :name, presence: true
  validates :calories, presence: true, numericality: { only_integer: true }
end
