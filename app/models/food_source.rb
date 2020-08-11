class FoodSource < ApplicationRecord
  belongs_to :user
  belongs_to :location

  validates_presence_of :name
  validates_presence_of :user
  validates_presence_of :location
end
