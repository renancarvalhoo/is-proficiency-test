require 'rails_helper'

RSpec.describe Student, type: :model do
  context "Validando a criação!" do
    it "Criando um registro correto" do
      course = Student.new(:name => "name test", :register_number => "register_number test", :status => :ativo)
      expect(course.valid?).to be true
    end
  end

  context "Validando a criação dos campos do Aluno!" do
    it "Validando se o nome foi setado" do
      course = Student.new(:register_number => "register_number test", :status => :ativo)
      expect(course.valid?).to be false
    end
    it "Validando se o register_number foi setado" do
      course = Student.new(:name => 'name test', :status => :ativo)
      expect(course.valid?).to be false
    end
    it "Validando se o status foi setado" do
      course = Student.new(name: 'name test', :register_number => "Teste")
      expect(course.valid?).to be false
    end
  end

  context "Validando campo enum" do

    it "Enum ativo" do
      course = Student.new(:name => "name test", :register_number => "register_number test", :status => :ativo)
      expect(course.valid?).to be true
    end
    it "Enum inativo" do
      course = Student.new(:name => "name test", :register_number => "register_number test", :status => :inativo)
      expect(course.valid?).to be true
    end
  end
end
