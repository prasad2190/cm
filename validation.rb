require 'rubygems'
require 'pry'
require './blank_fill_validation'
class Contact
	#@name,@email,@phone
	attr_accessor :name,:email,:phone_no
	include BlankValidation

	def initialize
		#@name="Prasad"
		#@phone_no="7709901166"
		#@email_id="gawderprasad@gmail.com"
	end
	def name_valid?
		present?(@name) && @name.match(/^[a-zA-Z\s]*$/) ? true:false 
	end

	def phone_valid?
		present?(@phone_no) && @phone_no.match(/[0-9+]/) && @phone_no.size==10  ? true:false
	end

	def email_valid?
		
		 present?(@email) && @email.match(/^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/) ? true:false
	end 
			
   def all_valid
   	(name_valid? && phone_valid? && email_valid?) ? true:false 
   end
end
c=Contact.new 
#c.name_valid?
#c.phone_valid?
#c.email_valid?#
#c.name="ASDF"
#p c.name_valid?
#c.phone_no="5467678791"
#p c.name_valid?
#c.email= "gawderprasad@gmail.com"
#p c.email_valid?
#binding.pry
