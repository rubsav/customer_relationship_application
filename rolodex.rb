class Rolodex
	attr_reader :contacts #will allow crm to use rolodex
 	@@index = 0
	def initialize
		@contacts = []
	end
	
	def add_contact(contact)
		contact.id = @@index
		@@index += 1
		@contacts << contact
	end

	def modify_contact(id, attribute, new_value)
		puts @contacts.inspect
		contact = @@index
		case attribute
		when 1
			contact.first_name = new_value
		when 2
			contact.last_name = new_value
		when 3
			contact.email = new_value
		when 4
			contact.note = new_value

		end
	end

	def display_single(single_index)

		@contacts.each do |contact|
			if single_index == contact.id
				puts "ID: #{contact.id}, Name: #{contact.first_name} Last Name: #{contact.last_name} Email: #{contact.email} Notes: #{contact.note}"
			else
				puts "Does not compute"
			end
		end
	end

	def display_attribute
		puts "[1] First name"
		puts "[2] Last name"
		puts "[3] Email"
		puts "[4] Note"
		puts "[5] ID" 
		print "Enter a contact attribute to show: "
		attribute = gets.chomp.to_i
		case attribute
		when 1
			@rolodex.contacts.each do |contact|
				puts "#{contact.first_name}"
			end
		when 2
			@rolodex.contacts.each do |contact|
				puts "#{contact.last_name}"
			end
		when 3
			@rolodex.contacts.each do |contact|
				puts "#{contact.email}"
			end
		when 4
			@rolodex.contacts.each do |contact|
				puts "#{contact.note}"
			end
		when 5
			@rolodex.contacts.each do |contact|
				puts "#{contact.id}"
			end
		end
	end

	def delete_contact(id_delete)
		@contacts.delete_if {|contact|
		contact.id == id_delete}
	end

end





# rolo1 = Rolodex.new
# rolo2 = Rolodex.new

# #add 3 contacts to both
# #class variable
# @@index = 1006

# #instance variable
# @index = 1003

# def getcontactbyid(contact_id)
	# 	@contacts.each do |contact|
	# 		if (contact.id == contact_id)
	# 			return contactend
	# 		end
	# 	end
	# end
