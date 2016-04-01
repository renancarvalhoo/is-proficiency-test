require 'rails_helper'

RSpec.describe Course, type: :model do

  context "Validando a criação!" do
    it "Criando um registro correto" do
      course = Course.new(:name => "name test", :description => "description test", :status => :ativo)
      expect(course.valid?).to be true
    end
  end

  context "Validando a criação dos campos do Curso!" do
    it "Validando se o nome foi setado" do
      course = Course.new(:description => "description test", :status => :ativo)
      expect(course.valid?).to be false
    end
    it "Validando se o description foi setado" do
      course = Course.new(:name => 'name test', :status => :ativo)
      expect(course.valid?).to be false
    end
    it "Validando se o status foi setado" do
      course = Course.new(name: 'name test', :description => "Teste")
      expect(course.valid?).to be false
    end
  end

  context "Validando campo enum" do

    it "Enum ativo" do
      course = Course.new(:name => "name test", :description => "description test", :status => :ativo)
      expect(course.valid?).to be true
    end
    it "Enum inativo" do
      course = Course.new(:name => "name test", :description => "description test", :status => :inativo)
      expect(course.valid?).to be true
    end
  end
end
