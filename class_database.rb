class Database
	attr_accessor :contacts, :attribute

	def initialize
		@contacts = []
		@attribute = attribute
		
	end
	
	def display_info_by_attribute(attribute)
		puts attribute
		@contacts.each do |contact|
			puts contact
			puts "----------------------"
			puts attribute
			puts "test"
		end

	end


	def add(contact)
		@contacts << contact
	end

	#def add_attr(attribute)
	#	@contacts << attribute
	#end
	def modify_contact

	end

	def display_all_contacts
		@contacts.each do |contact|
			puts "----------------------"
			puts contact.firstname
			puts contact.lastname
			puts contact.email
			puts contact.notes
			puts ""
		end
	end

	def display_particular_contact
	
	end


	def delete_contact
	end

end