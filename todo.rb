require_relative "view"
require_relative "models"

class Controller
	attr_accessor :create_csv, :list, :view

	def initialize
		@list = List.new
		@list.read_csv
		@view = View.new
		# @view.add
	end

	def add_incontroller(task_string)
		@task_instance = Task.new(task_string)
		@list.add_inlist(@task_instance)
		#crea instancia de task, la agrega a la lista, crea csv, imprime la lista (manda a llamar la clase de view)
		@list.rewrite_csv
		@view.add(@task_instance)
	end
		
	def edit_task
		
	end
	def delete_task
		
	end
	def complete?
		
	end
	
	def command_case(argv)
		@argv = argv
		command = @argv[0]
		# puts command

		case command
		when "index"
			puts "Adentro de index"

			# @view.show_list
			# muestra las @tasks
		when "add"
			# puts "Adentro de add"
			task_array = @argv[1..-1]
			task_string = task_array.join(" ")
			add_incontroller(task_string)

		# 	puts controller.add_incontroller(task)

		# when @command == "edit"
		# when @command == "delete"

		end
	end
end

controller = Controller.new
controller.command_case(ARGV)

# puts controller.add_incontroller(ARGV)



# Recibir del usuario (argv)
# hacer un parse del argv
# logica del comando que te mandan, llamar al metodo correspondiente