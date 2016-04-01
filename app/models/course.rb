class Course < ActiveRecord::Base
  has_many :class_rooms

  validates_presence_of :name, :description, :status
end
