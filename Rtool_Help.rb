class User_input
	def
	$user_input::nil 
	end
end

class Rtool_help < User_input
begin	
	puts "======================================================================================"
	puts "                                     RUBY TOOL HELP                                   "
	puts "======================================================================================"
	puts "                                                                                      "
	puts "     RUBY TOOLS is a Utility for quicker viewing of RPI systems.  Such as CPU Temp,   "  
	puts " memory use, disk space, and updating your system.  The Tool can be used in the CLI   "
	puts " or in a Desktop enviroment.  It utilizes the Linux terminal commands and runs them   "
	puts "in the terminal for quicker viewing. This tool will help beginners and Advanced Linux "
	puts "users alike.  the 'Update' option runs the sudo apt-get update && Sudo apt-get upgrade"
	puts "commands.  The other tools work in the same mannor, implementing the Linux system     "
	puts "commands though the ruby code.                                                        "
	puts "==> Type 'b' or 'B' and press 'Enter' to return back to Help Menu                     "
	puts "==>Type 'main', 'Main', or 'MAIN' and press 'Enter' to return to the Main Menu.       "
end	
	loop do
	 	 $user_input = gets.chop
	 	 load './RubyPi.rb' if $user_input =~ /main|Main|MAIN/
	 	 load './RubyPi_Help.rb' if $user_input =~ /b|B/
	 	 puts $user_input
	 end
 end
