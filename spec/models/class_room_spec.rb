require 'rails_helper'

RSpec.describe ClassRoom, type: :model do
  context "Validando a criação!" do
    it "Criando um registro correto" do
      student = Student.create(:name => "name test", :register_number => "register_number test", :status => :ativo)
      course = Course.create(:name => "name test", :description => "description test", :status => :ativo)

      class_room = ClassRoom.new(:student_id => student.id, :course_id => course.id, :entry_at => Time.now)
      expect(class_room.valid?).to be true
    end
  end

  context "Validando a criação dos campos da Matrícula!" do

    it "Validando se o nome foi setado" do
      student = Student.create(:name => "name test", :register_number => "register_number test", :status => :ativo)

      class_room = ClassRoom.new(:student_id => student.id, :entry_at => Time.now)
      expect(class_room.valid?).to be false

    end
    it "Validando se o register_number foi setado" do

      course = Course.create(:name => "name test", :description => "description test", :status => :ativo)
      class_room = ClassRoom.new(:course_id => course.id, :entry_at => Time.now)
      expect(class_room.valid?).to be false
    end
    it "Validando se o status foi setado" do
      student = Student.create(:name => "name test", :register_number => "register_number test", :status => :ativo)
      course = Course.create(:name => "name test", :description => "description test", :status => :ativo)

      class_room = ClassRoom.new(:student_id => student.id, :course_id => course.id)
      expect(class_room.valid?).to be false
    end
  end

end
