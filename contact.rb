class Contact
	attr_reader :id
	attr_accessor :first_name, :last_name, :email, :notes

	@@contacts = []
	@@id = 1

	def initialize(first_name, last_name, options = {})
		@first_name = first_name
		@last_name = last_name
		@email = options[:email]
		@notes = options[:notes]
		@id = @@id
		@id += 1
	end

	def self.create(first_name, last_name, options = {})
		new_contact = Contact.new(first_name, last_name, options)
		@@contacts << new_contact
		puts "Your contact information has been added to the system!"
	end

	def self.all
		@@contacts
	end

	def self.modify(first_name, last_name, options = {})
	end

	def self.display_contact
		puts "Enter id# for the contact you wish to display"
		id_input = gets.strip
		puts "Is #{id_input} the id you are looking for?"
		selection = gets.strip
			if selection == "y"
				@@contacts.each do | person|
				# puts person.inspect
				puts "First name: #{person.first_name}, Last Name: #{person.last_name}"
			end
			else
				puts "Nothing Here"
		end
	end

end
