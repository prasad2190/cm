require 'rubygems'
require 'pry'
class Contact
	#@name,@email,@phone
	attr_accessor :name,:email,:phone
=begin
	
rescue Exception => e
	
end
	def get_value(name,email,phone)
		@name=name
		@email=email
		@phone=phone
	end
=end
	def display
		puts "#{@name}#{@email}#{@phone}"
	end

	def name_val
		print "Enter name"
		name=gets().chomp!
		while (name=="\n" || name.size>=18 ||(name.count("0-9")>0)==true) do 
			print "invalid name plz enter correct name \n"
			print "Enter Name "
			name=gets().chomp!
		end
		
	end
	 
	def phone
		print "Enter phone no"
		phone=gets().chomp!
		while(phone=="\n" || phone.size<=10 || (phone.count("a-z")>0)==true) do
			print "invalid phone no plz enter correct no \n"
			print "valid"
			phone=gets().chomp!
			
		end
	end

	def email
		print "Enter email"
		email=gets()
		while (email=="\n" || email.match(/^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/).to_s=="") do 
			print "invalid email plz enter correct email \n"
			print "Enter email "
			email=gets()
		
		end
	end



end
c=Contact.new
a.name_val
a.phone
a.email
a.display#a.display#a.get_value("prasad","gawderprasad@gmail.com","7709901166")
#a.display
#binding.pry