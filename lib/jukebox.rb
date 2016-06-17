require 'pry'

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
  puts "I accept the following commands:\n- help : displays this help message\n- list : displays a list of songs you can play\n- play : lets you choose a song to play\n- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|song,idx| puts "#{idx+1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp

  if input.to_i.is_a?(Fixnum) && input.to_i > 0 && input.to_i < 10
    puts "Playing #{songs[input.to_i-1]}"
  elsif input.is_a?(String) && songs.find {|song| song == input}
    puts "Playing #{songs.find {|song| song == input}}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(help)
  help
  input = nil
  until input == "exit"
    puts "Please enter a command:"
    input = gets.chomp
    if input == "help"
      help
    elsif input == "play"
      play(songs)
    elsif input == "list"
      list(songs)
    end
  end 
  puts input
  exit_jukebox if input == "exit"
end





