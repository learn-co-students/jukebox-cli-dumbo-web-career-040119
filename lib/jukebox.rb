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
  if gets.chomp == 'help'
    puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
  end
end



def list(songs)
  puts songs
  puts "1. Phoenix - 1901
2. Tokyo Police Club - Wait Up
3. Sufjan Stevens - Too Much
4. The Naked and the Famous - Young Blood
5. (Far From) Home - Tiga
6. The Cults - Abducted
7. Phoenix - Consolation Prizes
8. Harry Chapin - Cats in the Cradle
9. Amos Lee - Keep It Loose, Keep It Tight"

  songs.each_with_index do |el, i|
    if gets.chomp == (i+1) 
      puts el
    end
  end
end


def play(songs)
  puts "Please enter a song name or number:"
  gets.chomp
  if (my_songs.keys.include?(gets.chomp))
    puts "Playing #{my_songs[gets.chomp}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye" if (gets.chomp == 'exit')
end

def run(my_songs)
  until gets.chomp == 'exit'
  help
  puts "Please enter a command:"
  gets.chomp
    if gets.chomp == 'list'
      list
    else if gets.chomp == 'play'
      play
    else if gets.chomp == 'exit' 
      exit_jukebox
      break
    end
  end
  if gets.chomp == 'exit' 
      exit_jukebox
  end
end
