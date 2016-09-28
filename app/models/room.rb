class Room < ActiveRecord::Base
  has_and_belongs_to_many :profiles

  validates_presence_of :title

  geocoded_by :address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

end
