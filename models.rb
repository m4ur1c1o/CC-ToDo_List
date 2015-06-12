require "csv"

class List
	def initialize
		@tasks = []
	end

	def add_inlist(task)
		@tasks << task
		# p "Array tasks: #{@tasks}"
	end

	# def create_csv
	# 	CSV.open("todo_list.csv","w") do |csv|
	# 		# @list.each do |task|
	# 			csv << [@task_instance, Time.now]
	# 		# end
	# 	end
	# end

	def read_csv
		# reading_csv = CSV.read("todo_list.csv", "r")
		CSV.foreach("todo_list.csv") do |row|
			@tasks << Task.new(row[0])
		end
		# puts "Adentro de read_csv"
		@tasks
	end

	def rewrite_csv
		CSV.open("todo_list.csv","w") do |csv|
			@tasks.each do |task|
				csv << [task.name, Time.now]
			end
		end
	end

end

class Task
	attr_reader :name

	def initialize(name)
		@name = name
	end

	
end