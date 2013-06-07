class Database
	attr_accessor :contacts, :attribute

	def initialize
		@contacts = []
		@attribute = attribute
		
	end
	
	def display_info_by_attribute(attribute)
		@contacts.each do |contact|
			puts contact.firstname if attribute == "firstname"
			puts contact.lastname if attribute == "lastname"
			puts contact.email if attribute == "email"
			puts contact.notes if attribute == "notes"
		end

	end


	def add(i,firstname, lastname, email, notes)
		@contacts << Contact.new(i,firstname,lastname,email,notes)
	end

	#def add_attr(attribute)
	#	@contacts << attribute
	#end
	def modify_contact

	end

	def display_all_contacts
		@contacts.each do |contact|
			puts "----------------------"
			puts contact.i
			puts contact.firstname
			puts contact.lastname
			puts contact.email
			puts contact.notes
			puts ""
		end
	end

	def display_particular_contact(name)
		@contacts.each do |contact|
			if name == contact.firstname
				puts contact.i
				puts contact.firstname 
				puts contact.lastname 
				puts contact.email 
				puts contact.notes 
			else
				puts "Contact not found"
			end
		end
	end

	def find_contact(name)
		@contacts.each do |contact|
			if delete == contact.firstname
				
		
			end
		end
	end


	def delete_contact(delete)
		i = find_contact(delete)
		@contacts.delete_at(contact.i-1000)
	end

end