class Student < ActiveRecord::Base    
    has_many :class_rooms

    validates_presence_of :name, :register_number, :status
end
