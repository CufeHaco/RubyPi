class User_input
	def
	$user_input::nil 
	end
end

class Rboot_help < User_input
begin	
	puts "=========================================================================================="
	puts "                                   RUBY BOOT HELP                                         "
	puts "=========================================================================================="
	puts "                                                                                          "
	puts " 	   RUBY BOOT Utility is ment to be used for the Command Line Interface(cli) only.       "
	puts " The use for this Utility is for Raspberry Pi's which are duel booted. If you             "
	puts " have a Desktop Operating System such as Raspbian, Ubuntu, Kali Linux, etc.,              "
	puts " with RetroPie and or Kodi, then the Ruby Boot Utility will be very handy.                "
	puts " Instead of having to type 'startx', 'emulationstation', or 'kodi' to boot your           "
	puts " OS of choice, the Utility does it for you.                                               "
	puts "                                                                                          "
	puts "     Caution, do not use this Utility while in your xsession(while a desktop is running)  "
	puts " While Raspbian or other Desktop OS is running, you cannot boot into Retropie, unless     "
	puts "you exit back to the CLI or reboot your RPI. Do not use the 'startx' option eather,       "
	puts "because it will start another xsession(as root) and will duplicate the Xautharity file.   "
	puts "In the chance this does happen, you must reboot and run startx again, which will give     "
	puts "a xauth: error.  as soon as you see it press Ctrl+C and wait untill your OS boots.        "
	puts "In the 'home' folder(dir) under 'View' click the 'show invisible files' and find all      "
	puts "Xauthority files and delete them then reboot. This will return your system back to normal."
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
