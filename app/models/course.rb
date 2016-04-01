class Course < ActiveRecord::Base
  has_many :class_rooms

  enum status: [:ativo, :inativo]

  validates_presence_of :name, :description, :status
end
