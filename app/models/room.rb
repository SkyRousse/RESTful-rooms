class Room < ActiveRecord::Base
  has_and_belongs_to_many :profiles

  validates_presence_of :title

end
