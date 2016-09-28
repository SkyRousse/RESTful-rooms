class Profile < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :rooms

  validates_presence_of :name
end
