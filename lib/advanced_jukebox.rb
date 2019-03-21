#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '</Users/mallorywoods/Development/jukebox-cli-dumbo-web-career-040119/audio/Emerald-Park/01.mp3',
"LiberTeens" => '</Users/mallorywoods/Development/jukebox-cli-dumbo-web-career-040119/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '</Users/mallorywoods/Development/jukebox-cli-dumbo-web-career-040119/audio/Emerald-Park/03.mp3',
"Guiding Light" => '</Users/mallorywoods/Development/jukebox-cli-dumbo-web-career-040119/audio/Emerald-Park/04.mp3',
"Wolf" => '</Users/mallorywoods/Development/jukebox-cli-dumbo-web-career-040119/audio/Emerald-Park/05.mp3',
"Blue" => '</Users/mallorywoods/Development/jukebox-cli-dumbo-web-career-040119/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '</Users/mallorywoods/Development/jukebox-cli-dumbo-web-career-040119/audio/Emerald-Park/07.mp3'
}

def help
    puts "I accept the following commands:"
    puts "- help : displays this help method"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end



def list(my_songs)
  my_songs.each do |name, location|
    puts name
  end
end


def play(my_songs)
  puts "Please enter a song name or number:"
  song_selection = gets.chomp

  my_songs.each do |song, location|
    if song_selection == song
      puts "Playing #{song}"
      system "open #{location}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
uts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_response = gets.chomp

  if user_response == "list"
    list
  elsif user_response == "play"
    play
  elsif user_response == "help"
    help
  elsif user_response == "exit"
      exit
  end
end
