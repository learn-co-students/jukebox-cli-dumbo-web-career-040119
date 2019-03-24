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
  stuff = ['I accept the following commands:','- help : displays this help message','- list : displays a list of songs you can play','- play : lets you choose a song to play','- exit : exits this program']
  
  stuff.each do |x|
    puts x
  end
end

def play(a)
  puts "Please enter a song name or number:"
  
  theInput = gets.chomp
  
  a.each_with_index do |title,num|
    if theInput == title || theInput == "#{num + 1}"
      puts "Playing #{title}"
    else
      puts "Invalid input, please try again"
    end
  end
end
  

def list(a)
  a.each_with_index do |x,num|
    puts "#{num + 1}. #{x}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(a)
  help
  
  theInput = ''
  
  until theInput == 'exit'
    puts 'Please enter a command:'
    theInput = gets.chomp
    if theInput == 'list'
      list(a)
    elsif theInput == 'play'
      play(a)
    elsif theInput == 'help'
      help
    elsif theInput == 'exit'
      exit_jukebox
      break
    end
  end
  
end