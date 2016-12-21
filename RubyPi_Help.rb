class User_input
	def
	$user_input::nil 
	end
end

class Rubypi_Help < User_input
begin	
	puts "====================================================================================="
	puts "                              RUBY PI HELP MENU V 1.0                                "
	puts "====================================================================================="
	puts "                                                                                     "
	puts "                         welcome to the RUBY PI HELP MENU.                           "
	puts "        This Menu is to help you resolve any issues you have using RUBY PI.          "
	puts "                                                                                     "
	puts "==> RUBYBOOT HELP: Type 'rubyboot', 'Rubyboot', or 'RUBYBOOT'and press 'Enter'.      "
	puts "==> RUBY TOOLS HELP: Type 'rubytools', 'Rubytools', or 'RUBYTOOLS' and press 'Enter'."
	puts "==> ABOUT RUBY PI: Type 'about', 'About', or 'ABOUT' and press 'Enter'.              "
	puts "==> RUBY PI MAIN MENU: Type 'b', or 'B' and press 'Enter'.                           "
	puts "==> LINUX COMMAND LINE: Type 'q' or 'Q' and press 'Enter'.                           "
	puts "                                                                                     " 
end	
	loop do
		$user_input = gets.chomp
		load './Rboot_Help.rb' if $user_input =~ /rubyboot|Rubyboot|RUBYBOOT/
		load './Rtool_Help.rb' if $user_input =~ /rubytools|Rubytools|RUBYTOOLS/
		load './RubyPi_About.rb' if $user_input =~ /about|About|ABOUT/
		load './RubyPi.rb' if $user_input =~ /b|B/
		break if $user_input =~ /q|Q/
		puts $user_input
	end
end
