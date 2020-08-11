class Location < ApplicationRecord
    belongs_to :region
    belongs_to :user
    has_many :food_sources, dependent: :destroy

    validates_presence_of :name

    # accepts_nested_attributes_for :food_sources, allow_destroy: true, reject_if: proc { |attr| attr['name'].blank? }


end
