require_relative "models"

class View
	attr_accessor :read_csv

	def show_list
		# @list.read_csv
	end

	def add(task)
		puts "Agregaste la tarea: #{task.name} a tu lista."
	end
end