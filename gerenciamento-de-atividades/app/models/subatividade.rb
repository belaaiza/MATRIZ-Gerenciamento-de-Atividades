class Subatividade < ActiveRecord::Base
	validates :name, length: { maximum: 100, too_long: "O nome deve ter no máximo %{count} caracteres"}
	validates_presence_of :name, message: "O nome não pode ser vazio"
	validates_presence_of :description, message: "A descrição não pode ser vazia"
	validates :description, length: { maximum: 500, too_long: "A descrição deve ter no máximo %{count} caracteres" }
	validates_inclusion_of :duration, :in => 0..200, message: "Por favor selecione um valor de 0 a 200"
	validates_presence_of :location, message: "Por favor, selecione a localizalização da atividade"
	validates_presence_of :progress, message: "Por favor, selecione o andamento da atividade"

end
