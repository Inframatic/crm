require_relative 'Class_Contact'
require_relative 'Class_Database'

class Runner

	def self.run
		db = Database.new
	
	# takes user to menu where they are prompted to type command from
	#options
		
		while true		

			puts "To enter contact, type 'add'"
			puts "To modify and existing contact, type 'modify contact'"
			puts "To display all existing contacts, type 'display all contacts'"
			puts "To display a particular contact, enter 'display a contact'"
			puts "To display a particular user's attribute, 'sort by attribute'"
			puts "To delete a contact type in user's email address and then 'delete'"
			puts "To exit, type 'exit'"

			menu_command = gets.chomp.downcase  
			puts menu_command #\b
			puts "\e[H\e[2J"

			if menu_command=='exit'
				break
			elsif menu_command == 'add'
			

				puts "Please enter you first name"
			   	firstname = gets.chomp.downcase
			   	puts "\e[H\e[2J"
				
				puts "Please enter your last name"
				lastname = gets.chomp.downcase
				puts "\e[H\e[2J"
				
				puts "Please enter your email"
				email = gets.chomp.downcase
				puts "\e[H\e[2J"
				
				puts "Please enter any additional informatioin"
				notes = gets.chomp.downcase
				puts "\e[H\e[2J"
				
				
				new_contact = Contact.new
				new_contact.add_input(firstname, lastname, email, notes)
				# we want to store this new_contact into the database
				db.add(new_contact)

	
				
			elsif menu_command == 'modify contact'
				puts "Which contact would you like to modify?"
				modify_contact = gets.chomp.downcase
			elsif menu_command == 'display all contacts'

				db.display_all_contacts

			elsif menu_command == 'display a contact'

			elsif menu_command == 'sort by attribute'
				puts "Which attribute would you like displayed?"
				puts "Options: firstname, lastname, email, notes"
				attribute = gets.chomp.downcase
				db.display_info_by_attribute(attribute)

			elsif menu_command == '#{email} delete'
		
			else
				puts "Invalid command. Please enter a command from the menu."
			end

		end
		

		
	end
	
end
Runner.run