require_relative '../config/environment.rb'

new_cli = CommandLineInterface.new
new_cli.greet
sleep(2)
new_cli.which_og_song
