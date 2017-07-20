require 'rest-client'

class SimpleRest

	def initialize
		@response = RestClient.get 'https://www.bing.com/search?q=new+zealand'
	end 

	def welcome_msg
		system 'clear' 
		puts "***********************"
		puts "Vladl2c Simple Rest"
		puts "For Params New+Zealand"
		puts "***********************"	
		menu_option
	end 

	def menu_option
		puts "1) Response Code"
		puts "2) Cookies for the search"
		puts "3) The headers for the search"
		puts "4) The Body for the search"
		inp = gets.chomp 
		menu_output(inp)
	end 

	def menu_output(input)
		case input 
		when "1" 
			puts "#{@response.code}"		
		when "2"
			puts "#{@response.cookies}"	
		when "3" 
			puts "#{@response.headers}"		
		when "4"
			puts "#{@response.body}"	
		end 
	end 

end 

smp = SimpleRest.new 
smp.welcome_msg
