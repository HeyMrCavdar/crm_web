class Contact
	attr_reader :id
	attr_accessor :first_name, :last_name, :email, :notes

	@@contacts = []
	@@id = 1000

	def initialize(first_name, last_name, email, notes)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@notes = notes
		@id = @@id
		@@id += 1
	end

	def self.create(first_name, last_name, email, notes)
		new_contact = Contact.new(first_name, last_name, email, notes)
		@@contacts << new_contact
	end

	def self.all
		@@contacts
	end

	def self.modify(first_name, last_name, options = {})
	end

	def self.display_contact
	end

	def delete_contact
	end

	def self.find(contact_id)
		@@contacts.find { |contact| contact.id == contact_id}
	end


end
