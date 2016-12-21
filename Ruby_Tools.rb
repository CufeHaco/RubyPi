class User_input
	def
	$user_input::nil
end
end

class Ruby_Tools < User_input
begin	
	puts "=========================================================================="
	puts "                             RUBY TOOLS V1.0                              "
	puts "=========================================================================="
	puts "                                                                          "
	puts "                         Welcome To RUBY TOOLS!                           "
	puts "    Here you will find tools that will help you monitor your Pi.          "
	puts "    This Utility program is designed for faster and easyier use of        "
	puts "    commands used to check and work with the hardware of your Pi.         "
	puts "                                                                          "
	puts "  These Tools can be use in the Command Line or in a Desktop Enviroment.  " 
	puts "                                                                          "
	puts "=========================================================================="
	puts "                                MENU                                      "
	puts "      (Type 'menu', 'Menu', or 'MENU' and enter to display options again) "
	puts "====> Update Utility. Type 'update, Update, or UPDATE' and  press'enter'. "
	puts "====> Run Raspi-Config. Type 'pifig, Pifig, or PIFIG' and  press'enter'.  "
	puts "====> For RetroPie Setup, type 'retro' 'Retro', or 'RETRO' and press 'Enter'"
	puts "====> Disk Space.  Type 'sd, SD, df, or DF' and  press'enter'.            "
	puts "====> Memory Use. Type 'memory, Memory, or MEMORY' and  press'enter'.     "
	puts "====> Check Memory Split: Type 'mems, Mems, or MEMS' and  press'enter'.   "
	puts "====> CPU TEMP: type 'ctemp, Ctemp, or CTEMP' and  press'enter'.          "
	puts "====> Memory Information: Type 'memfo, Memfo, or MEMFO' and  press'enter'."
	puts "====> To return to Main Menu Type 'b' or 'B'and press'enter'.             "
	puts "====> To return to Command Line, type 'q' or 'Q' and press 'enter'.       "
end	
	loop do
		$user_input = gets.chomp
		system 'sudo apt-get update && sudo apt-get upgrade' if $user_input =~ /update|Update|UPDATE/                    ;
		system 'sudo raspi-config' if $user_input =~ /pifig|Pifig|PIFIG/                                                 ;
		Dir.chdir('/home/pi/RetroPie-Setup') { system  'sudo ./retropie_setup.sh'} if $user_input =~ /retro|Retro|RETRO/ ;
		system 'df -h' if $user_input =~ /sd|SD|df|DF/                                                                   ;
		system 'free' if $user_input =~ /memory|Memory|MEMORY/                                                           ;
		system 'vcgencmd get_mem arm && vcgencmd get_mem gpu' if $user_input =~ /mems|Mems|MEMS/                         ;
		system 'vcgencmd measure_temp'  if $user_input =~ /ctemp|Ctemp|CTEMP/                                            ;
		system 'cat /proc/meminfo' if $user_input =~ /memfo|Memfo|MEMFO/                                                 ;
		load './RubyPi.rb' if $user_input =~ /b|B/                                                                       ;
		load './Ruby_Tools.rb' if $user_input =~ /menu|Menu|MENU/                                                        ;
		break if $user_input =~ /q|Q/
		puts $user_input
	end

end
