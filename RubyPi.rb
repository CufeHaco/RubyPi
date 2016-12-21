#!/user/local/bin/env ruby
BEGIN {puts "Date and Time: " + Time.now.to_s} 

#===============================================================================
#Thank you for Using RUBY PI Version 1.0
#This Script was developed for Duelboot Raspberry Pi's that are using
#Raspbian and RetroPie.  This is Not the final Script however.
#This Script will call the startx and emulationstation commands to load the OS,
#However, it autoloads IRB, the Interactive Ruby command Line to function.
#at this time, If you exit to the CLI, it will return you back into Irb after
#closing the Xwindow session of your OS.  To exit out of IRB, simply type 'exit'
#to return to the Linux CLI.  
#This script was Written by Troy B. Mallory on 12/12/2016.
#===============================================================================
class User_input
	def
	$user_input::nil 
	end
end

class Utility_init < User_input

#===============================================================================
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!WARNING!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#DO NOT EDIT THIS SCRIPT UNLESS YOU ARE EXPERIENCED WITH RUBY!
# DOING SO CAN BRICK YOUR SYSTEM IN A LOOP OR RESULT IN THE PROGRAM TO CRASH!
# EDIT WITH YOUR OWN RISK!  IF A LOOP HAPPENS YOU WILL THEN NEED TO REFORMAT
#AND REINSTALL YOUR OS AND FILES BACK ON YOUR MICRO SD CARD! YOU HAVE BEEN WARNED!
#================================================================================
begin 
	puts "=========================================================================="
	puts "	                        RUBY PI MAIN MENU v1.0    "
	puts "=========================================================================="
	puts "                                                                          "
	puts "                      Welcome to the Ruby Pi Utility.                     "
	puts "           This Utility is for easy interaction for new Pi Users.         "
	puts "                   Please follow the Instructions Below:                  "
	puts "                                                                          "
	puts "====>   To launch RUBYBOOT, press '1' and press 'Enter'.                  "
	puts "====>   To launch RUBYTOOLS, press '2' and press 'Enter'.                 "
	puts "====>   To launch IRB, press '3' and press 'Enter'.                       "
	puts "====>   To open 'Help' type 'help', 'Help',or 'HELP' and press 'Enter'.   "
	puts "====>   To exit to Linux Command Line, press 'Q' or 'q' and press 'Enter'."
											 
end
	
		loop do		 
		$user_input = gets.chomp
		load './RubyBoot.rb' if $user_input =~ /1/ 
		load './Ruby_Tools.rb' if $user_input =~ /2/
		load './Irb_init.rb'  if $user_input =~ /3/ 
		load './RubyPi_Help.rb' if $user_input =~ /help|Help|HELP/		
		break if $user_input =~ /q|Q/ 
		puts $user_input 
	end
   
end
