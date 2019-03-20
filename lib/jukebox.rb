songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands: 
  - help : displays this help message 
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end 

def list(songs)
  songs.each_with_index do |song,index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  name = gets.chomp
  #puts name
  #name = "Sufjan Stevens - Too Much"
  #name = "Phoenix - 1901"
  #name = 1
  output = ""
  songs.each_with_index do |song,index|
    if name.to_i == index + 1 || name == song
      output = song
    end
  end
  
  if output.empty? == false
    puts "Playing #{output}"
  else
    puts "Invalid input, please try again"
  end
end

def run(args) 
  help
  puts "Please enter a command:"
  command = gets.chomp
  if command == "exit"
    exit_jukebox
  else
    puts "Please enter a command:"
    command = gets.chomp
  end
end

def exit_jukebox
  puts "Goodbye"
end
help 
list(songs)
#play(songs)
exit_jukebox