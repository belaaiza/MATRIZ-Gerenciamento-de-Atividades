class Employee < ActiveRecord::Base
	validates :name, length: { maximum: 100, too_long: "O nome deve ter no máximo %{count} caracteres"}
	validates_presence_of :name, message: "O nome não pode ser vazio"
	validates_presence_of :enrollment, message: "A matrícula não pode ser vazia"
	validates_presence_of :cpf, message: "O cpf não pode ser vazio"
	validates_presence_of :phone, message: "O telefone não pode ser vazio"
end
