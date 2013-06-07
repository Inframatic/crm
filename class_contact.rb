class Contact
 
 	 attr_accessor :i, :firstname, :lastname, :email, :notes

 	def firstname
 		@firstname
 	end

 	def initialize(i,firstname, lastname, email, notes)
		@i = i
		@firstname = firstname
		@lastname = lastname
		@email = email
		@notes = notes
		

	end		


	
	
	#def add_input(firstname, lastname, email, notes)
	#	@firstname = firstname
	#	@lastname = lastname
	#	@email = email
	#	@notes = notes
	#	@i = i
	#end

	def values
		id = gets.chomp
		value_array << id
		value_array = [] 
 	end

end

