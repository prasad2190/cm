require "rubygems"
require "./validation"
class Input
	attr_accessor :contact
	def initialize
		@contact=Contact.new
	end

	def name_input
		puts "enter the name"
		@contact.name=gets.chomp!
		
	end
	def phone_input
		puts "enter the phone no"
		@contact.phone_no=gets.chomp!
		 
	end
	def email_input
		puts "enter the email"
		@contact.email=gets.chomp!
		
	end
	def check_all
		if (@contact.all_valid)
			puts "true"
		else
			puts "false"
		end

	end
end


i=Input.new
i.name_input
i.phone_input
i.email_input
i.check_all
#