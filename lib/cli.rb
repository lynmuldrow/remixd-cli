require "tty-prompt"
require "pry"


class CommandLineInterface

    def greet 
        font = TTY::Font.new(:standard)
        pastel = Pastel.new
        puts
        puts
        puts pastel.yellow(font.write("REMIX'D"))
        puts                                
        puts
        puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
        puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
        puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
        puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
        puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
        puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
        puts "MMMMMMMMMMMNNNNNNNNNNNNNNNNNNNNNNNNNNNNNMMMMMMMMMM"
        puts "MMMMMMMMMMdNs/yy/yMdMNNNNNNNNMNNMs/yy/yNdMMMMMMMMM"
        puts "MMMMMMMMMMd/yMMMN:hdMMMMMMMMMMMNooMMMN+sdMMMMMMMMM"
        puts "MMMMMMMMMMdyodMNy/mdMMMMMMMMMMMNh+hMMy+ddMMMMMMMMM"
        puts "MMMMMMMMMMdMmyyyyNMNNNNNNNNNNNNMMNyyyyNNmMMMMMMMMM"
        puts "MMMMMMMMMMMNNNNNNNNNNNNNNNNNNNNNNNNNNNNNMMMMMMMMMM"
        puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
        puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
        puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
        puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
        puts
        puts
        puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
        puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
        puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
        puts
        puts
        puts "Ayeeee, welcome to REMIX'D! Find out what samples make up your fav songs, right here."
        puts
        puts
        puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
        puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
        puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
        puts
        puts
    end

    def which_og_song
        prompt = TTY::Prompt.new(active_color: :magenta)
        artist_choice = prompt.select("Which artist would you like to start with?", %w(Kanye Dre Weeknd Puffy Jay-Z Drake))
        puts
        puts
        puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
        puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
        puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
        puts
        puts

        if artist_choice == "Kanye"
            puts "Dope, #{artist_choice}!"
            sleep 0.5
            kanye_mixes
        
        elsif artist_choice == "Dre"
            puts "We didn't forget about #{artist_choice}!"
            sleep 0.5

        elsif artist_choice == "Weeknd"
            puts "Getting ready for the #{artist_choice}?"
            sleep 0.5

        elsif artist_choice == "Puffy"
            puts "#{artist_choice}, aka P.Diddy, Puff Daddy, and Brother Love."
            sleep 0.5
        
        elsif artist_choice == "Jay-Z"
            puts "The one and only #{artist_choice}!"
            sleep 0.5
        
        elsif artist_choice == "Drake"
            puts "Always in his feelings- you chose #{artist_choice}!"
            sleep 0.5
            drake_mixes
    
        end
    end

    def kanye_mixes
        puts
        puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
        puts "MMMMMMMMMMMNNNNNNNNNNNNNNNNNNNNNNNNNNNNNMMMMMMMMMM"
        puts "MMMMMMMMMMdNs/yy/yMdMNNNNNNNNMNNMs/yy/yNdMMMMMMMMM"
        puts "MMMMMMMMMMd/yMMMN:hdMMMMMMMMMMMNooMMMN+sdMMMMMMMMM"
        puts "MMMMMMMMMMdyodMNy/mdMMMMMMMMMMMNh+hMMy+ddMMMMMMMMM"
        puts "MMMMMMMMMMdMmyyyyNMNNNNNNNNNNNNMMNyyyyNNmMMMMMMMMM"
        puts "MMMMMMMMMMMNNNNNNNNNNNNNNNNNNNNNNNNNNNNNMMMMMMMMMM"
        puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
        puts 
        puts 
        puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
        puts
        puts "Here's a list of Kanye's remix'd songs."
        puts 
        puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"

        puts
        puts

        remixd_kanye = Remix.where(artist_id: "Kanye West")

            remixd_kanye.each do |r|
                puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
                puts r.title
                puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
                puts
            end

        sleep 1

        puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
        puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
        puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"

        prompt = TTY::Prompt.new(active_color: :cyan)
        choose_kanye = prompt.select("Which one of Kanye's songs would you like to learn about?", %w(Blood Drive Spaceship))

        puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
        puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
        puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"

        if choose_kanye == "Blood"
            nina_simone = OGSong.where(title: "Strange Fruit")

            nina_simone.each do |n|
                puts 
                puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
                puts
                puts
                puts "Kanye used #{n.title}, which was created by #{n.og_artist} in #{n.og_year}."
                puts
                puts 
                puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
            end

        elsif choose_kanye == "Drive"
            hank_crawford = OGSong.where(title: "Wildflower")

            hank_crawford.each do |h|
                puts 
                puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
                puts
                puts
                puts "Kanye used #{h.title}, which was created by #{h.og_artist} in #{h.og_year}."
                puts
                puts 
                puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
            end

        elsif choose_kanye == "Spaceship"
            marvin_gaye = OGSong.where(title: "Distant Lover")

            marvin_gaye.each do |m|
                puts 
                puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
                puts
                puts
                puts "Kanye used #{m.title}, which was created by #{m.og_artist} in #{m.og_year}."
                puts
                puts 
                puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
            end
        end

        sleep 2

        what_next = prompt.select("You've learned about one of Kanye's remixes. What next?", %w(Back Home Artists))
    
        if what_next == "Back"
            prompt.select("Pick another Kanye remix.", %w(Blood Drive Spaceship))
            if choose_kanye == "Blood"
                nina_simone = OGSong.where(title: "Strange Fruit")
    
                nina_simone.each do |n|
                    puts 
                        puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
                    puts
                    puts
                    puts "Kanye used #{n.title}, which was created by #{n.og_artist} in #{n.og_year}."
                    puts
                    puts 
                        puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
                end
    
            elsif choose_kanye == "Drive"
                hank_crawford = OGSong.where(title: "Wildflower")
    
                hank_crawford.each do |h|
                    puts 
                        puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
                    puts
                    puts
                    puts "Kanye used #{h.title}, which was created by #{h.og_artist} in #{h.og_year}."
                    puts
                    puts 
                        puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
                end
    
            elsif choose_kanye == "Spaceship"
                marvin_gaye = OGSong.where(title: "Distant Lover")
    
                marvin_gaye.each do |m|
                    puts 
                        puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
                    puts
                    puts
                    puts "Kanye used #{m.title}, which was created by #{m.og_artist} in #{m.og_year}."
                    puts
                    puts 
                        puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
                end
            end
        
        sleep 1
        puts 
        puts 
        puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
        puts "MMMMMMMMMMMNNNNNNNNNNNNNNNNNNNNNNNNNNNNNMMMMMMMMMM"
        puts "MMMMMMMMMMdNs/yy/yMdMNNNNNNNNMNNMs/yy/yNdMMMMMMMMM"
        puts "MMMMMMMMMMd/yMMMN:hdMMMMMMMMMMMNooMMMN+sdMMMMMMMMM"
        puts "MMMMMMMMMMdyodMNy/mdMMMMMMMMMMMNh+hMMy+ddMMMMMMMMM"
        puts "MMMMMMMMMMdMmyyyyNMNNNNNNNNNNNNMMNyyyyNNmMMMMMMMMM"
        puts "MMMMMMMMMMMNNNNNNNNNNNNNNNNNNNNNNNNNNNNNMMMMMMMMMM"
        puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
        puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
        puts
        puts
        puts "Awesome. Let's go back and learn more about different remixes."
        puts
        puts
        puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
        which_og_song

        elsif what_next == "Home"
            greet
            which_og_song
        elsif what_next == "Artists"
                which_og_song
        end
    end



    def drake_mixes
        puts "Here's a list of Drake's remix'd songs."

        remixd_drake = Remix.where(artist_id: "Drake")

            remixd_drake.each do |r|
                puts
                puts "______________________________________________________________________"
                puts r.title
                puts "______________________________________________________________________"
            end

        sleep 1

        prompt = TTY::Prompt.new(active_color: :cyan)
        choose_drake = prompt.select("Which one of Drake's songs would you like to learn about?", %w(Bling Nice Feelings))

        if choose_drake == "Bling"
            nina_simone = OGSong.where(title: "Strange Fruit")

            nina_simone.each do |n|
                puts 
                puts "______________________________________________________________________"
                puts
                puts
                puts "Kanye used #{m.title}, which was created by #{m.og_artist} in #{m.og_year}."
                puts
                puts 
                puts "______________________________________________________________________"
            end

        elsif choose_drake == "Nice"
            hank_crawford = OGSong.where(title: "Wildflower")

            hank_crawford.each do |h|
                puts 
                puts "______________________________________________________________________"
                puts
                puts
                puts "Kanye used #{m.title}, which was created by #{m.og_artist} in #{m.og_year}."
                puts
                puts 
                puts "______________________________________________________________________"
            end

        elsif choose_drake == "Feelings"
            marvin_gaye = OGSong.where(title: "Distant Lover")

            marvin_gaye.each do |m|
                puts 
                puts "______________________________________________________________________"
                puts
                puts
                puts "Kanye used #{m.title}, which was created by #{m.og_artist} in #{m.og_year}."
                puts
                puts 
                puts "______________________________________________________________________"
            end
        end

        sleep 2

        what_next = prompt.select("You've learned about one of Kanye's remixes. What next?", %w(Back Home Artists))
    
        if what_next == "Back"
            prompt.select("Pick another Kanye remix.", %w(Blood Drive Spaceship))
            if choose_drake == "Blood"
                nina_simone = OGSong.where(title: "Strange Fruit")
    
                nina_simone.each do |n|
                    puts 
                    puts "______________________________________________________________________"
                    puts
                    puts
                    puts "Kanye used #{n.title}, which was created by #{n.og_artist} in #{n.og_year}."
                    puts
                    puts 
                    puts "______________________________________________________________________"
                end
    
            elsif choose_drake == "Drive"
                hank_crawford = OGSong.where(title: "Wildflower")
    
                hank_crawford.each do |h|
                    puts 
                    puts "______________________________________________________________________"
                    puts
                    puts
                    puts "Kanye used #{h.title}, which was created by #{h.og_artist} in #{h.og_year}."
                    puts
                    puts 
                    puts "______________________________________________________________________"
                end
    
            elsif choose_drake == "Spaceship"
                marvin_gaye = OGSong.where(title: "Distant Lover")
    
                marvin_gaye.each do |m|
                    puts 
                    puts "______________________________________________________________________"
                    puts
                    puts
                    puts "Kanye used #{m.title}, which was created by #{m.og_artist} in #{m.og_year}."
                    puts
                    puts 
                    puts "______________________________________________________________________"
                end
            end
        
        sleep 1
        puts 
        puts 
        puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
        puts "MMMMMMMMMMMNNNNNNNNNNNNNNNNNNNNNNNNNNNNNMMMMMMMMMM"
        puts "MMMMMMMMMMdNs/yy/yMdMNNNNNNNNMNNMs/yy/yNdMMMMMMMMM"
        puts "MMMMMMMMMMd/yMMMN:hdMMMMMMMMMMMNooMMMN+sdMMMMMMMMM"
        puts "MMMMMMMMMMdyodMNy/mdMMMMMMMMMMMNh+hMMy+ddMMMMMMMMM"
        puts "MMMMMMMMMMdMmyyyyNMNNNNNNNNNNNNMMNyyyyNNmMMMMMMMMM"
        puts "MMMMMMMMMMMNNNNNNNNNNNNNNNNNNNNNNNNNNNNNMMMMMMMMMM"
        puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
        puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
        puts
        puts
        puts "Awesome. Let's go back and learn more about different remixes."
        puts
        puts
        puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
        which_og_song

        elsif what_next == "Home"
            greet
            which_og_song
        elsif what_next == "Artists"
                which_og_song
        end
    end
end
