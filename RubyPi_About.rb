class User_input
	def
	$user_input::nil 
	end
end

class Rubypi_About < User_input
begin	
	puts "=============================================================================="
	puts "                          RUBY PI UTILITY: ABOUT                              "
	puts "=============================================================================="
	puts "                                                                              "
	puts "     RUBY PI UTILITY is created for easyier managment of your Raspberry Pi.   "
	puts " It was inspired from personal use of my Raspberry Pi 3, to modify the Debian "
	puts " system as a overlay of the CLI, and to use more Ruby functions and the IRB,  "
	puts " the Interactive Ruby Shell.                                                  "
	puts "                                                                              "
	puts "     This .rb Utility program was written by Troy B. Mallory. Although the    "
	puts " scripts were written for user customization, plagerisum of my work is Illegal."
	puts " This Current Version is Beta V1, with future plans to expanded on and refined."
	puts " This script is still in it's first version, so Bugs are unknown at this time."
	puts " There is a 'READ ME' file and a 'Bug Report' file in the folder which any users"
	puts " of RUBY PI can read for more information, and contact info to send the Bug"
	puts "Report file to me.  Thank you for using Ruby Pi!"
	puts "Sincerily,"
	puts "Troy B. Mallory."
	puts "==> Type 'b' or 'B' and press 'Enter' to return back to Help Menu.                        "
	puts "==>Type 'main', 'Main', or 'MAIN' and press 'Enter' to return to the Main Menu.           "
end	
	 loop do
	 	 $user_input = gets.chop
	 	 load './RubyPi.rb' if $user_input =~ /main|Main|MAIN/
	 	 load './RubyPi_Help.rb' if $user_input =~ /b|B/
	 	 puts $user_input
	 end
 end
