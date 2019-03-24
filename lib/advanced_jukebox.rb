

my_songs = {
 "Go Go GO" => 'audio/Emerald-Park/01.mp3',
 "LiberTeens" => 'audio/Emerald-Park/02.mp3',
 "Hamburg" =>  'audio/Emerald-Park/03.mp3',
 "Guiding Light" => 'audio/Emerald-Park/04.mp3',
 "Wolf" => 'audio/Emerald-Park/05.mp3',
 "Blue" => 'audio/Emerald-Park/06.mp3',
 "Graduation Failed" => 'audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list songs
  for i in 0..songs.length-1
    puts songs.keys.collect.sort[i]
  end
end


def play songs
  puts "Please enter a song name:"
  response = gets.chomp
  match = false
  songs.each do |song, file_loc|
     if response == song
      puts "Playing #{song}"
      match = true

        system 'start #{file_loc}'


      break
     end
  end
  if match == false
    puts "Your choice is invalid"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run songs
  help
  cmd = ''
  until cmd == "exit" do
    puts "Please enter a command:"
    cmd = gets.chomp
    case cmd
      when "help"
        help
      when "list"
        list songs
      when "play"
        play songs
      when "exit"
        exit_jukebox
    end
  end
end
