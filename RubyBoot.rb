#!/user/local/bin/env ruby
require 'irb'
#===============================================================================
#Thank you for Using RUBYBOOT Version 1.2
#This Script was developed for Duelboot Raspberry Pi's that are using
#Raspbian and RetroPie.  This is Not the final Script however.
#This Script will call the startx and emulationstation commands to load the OS,
#However, it autoloads IRB, the Interactive Ruby command Line to function.
#at this time, If you exit to the CLI, it will return you back into Irb after
#closing the Xwindow session of your OS.  To exit out of IRB, simply type 'exit'
#to return to the Linux CLI.  
#This script was Written by Troy B. Mallory on 12/08/2016.
#this script was Modifyed by the Writter, Troy B. Mallory on 12/12/2016.
#This script was Modifyed by the Writter, Troy B. Mallory on 12/20/2016.
#===============================================================================
class User_input
	def
          $user_input::nil
  end
end

class RubyBoot < User_input
		#===============================================================
		#this section prints the menu instructions to the screen.
		#If you alter the menu commands below, make sure you update this
		#section to match the new commands below.
		#Example if startx =~ /1/ is changed to /a|A/ change the print 
		#out of 'boot into your Desktop to 'a' or 'A'
		#===============================================================
begin
	puts "========================================================================"
	puts "                            RUBYBOOT V1.2                               "
	puts "========================================================================"
	puts "=============================CAUTION===================================="
	puts "If you are in your Decktop enviroment, do not use the RUBYBOOT Ultility."
	puts "By Selecting 1 during a Xsession running, it will start a new session,  "
	puts "as ROOT user.  Doing so will add a duplicate Xautharity file.           "
	puts "Read the 'RUBY PI' Help from the main Menu for more Info.               "
	puts "========================================================================"
	puts "                                                                        "
	puts "               Welcome to RUBYBOOT for Raspberry Pi!                    "
	puts "  This Ultility is for Fast loading of your Pi's Operating Systems      "
	puts "                                                                        "
	puts "---------------------------Menu Options---------------------------------"
	puts "=>To Boot into your Desktop(Raspbian, Ubuntu, etc., press '1' and Enter."
	puts "=>To Boot RetroPie(Emulation Station), press '2' and Enter.             "
	puts "=>To Boot Kodi(Multi-Media Center), press '3' and Enter.                "
	puts "=>To Reboot your Pi, press '4' and Enter.                               "
	puts "=>To Return back to Ruby Utility Main Menu, press 'b' or 'B' and Enter. "
	puts "=>To Exit to Linux Command Line, press 'q' or 'Q' and Enter             "
	puts "                                                                        "
end
	
#==============================================================================
#This Section can by Modifyed by the User.  If no Desktop OS is present,
#Comment out using the '#' on system 'startx' option.
#You can then Modify the user Input choice for emulationstation(starts retropie)
#to 1 in the /2/ area. Or you can customize the choices to your liking.
#you can add more input options like the 'b' and 'B' by using the format
# /a|b|c|d/ after user_input =~ this also works with full words like /Yes|yes/
#==============================================================================
	
	loop do
		
		$user_input = gets.chomp
		 system 'startx' if $user_input =~ /1/             ;                       
		 system 'emulationstation' if $user_input =~ /2/   ;        
		 system 'kodi' if $user_input =~ /3/               ;  
		 system 'sudo reboot' if $user_input =~ /4/        ;
		 load './RubyPi.rb' if $user_input =~ /b|B/        ;              
		 load './RubyPi.rb
		 
	break if $user_input =~ /q|Q/  
	puts $user_input
	end

end

