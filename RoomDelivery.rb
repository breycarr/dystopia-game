inventory = ["pencil","lint","penknife"]
room = ["lamp","pen","charger"]
#need to work out how to pass inventory into methods
def check   
  if action.downcase.include? "inventory"
    puts "you are carrying"
    puts inventory
    break
  elsif action.downcase.include? "room"
    puts "in the room, you can see"
    puts room
    break
  else
    puts "you'll need to tell me what you want to check!"
    action = gets.chomp
  end
end
def take
  thing = action.split(" ").last
  if
    room.delete("#{thing}")
    inventory.push("#{thing}")
    puts "You are now carrying"
    puts inventory
    action = gets.chomp
    break
  else
    puts "there is no #{thing} to pick up"
    action = gets.chomp
    break
  end
end
def drop
  thing = action.split(" ").last
   if
     inventory.delete("#{thing}")
     room.push("#{thing}")
     puts "You have dropped #{thing}, and are now only carrying:"
     puts inventory
     action = gets.chomp
     break
   else
     puts "You're not carrying #{thing}"
     action = gets.chomp
     break
   end
end

puts "You stand in the centre of a dimly lit room."
puts "You can see several object you might be able to pick up"
puts " "
puts "In your inventory is:"
puts inventory
puts " "
puts "what would you like to do?"
action = gets.chomp #currently having to test run this code in Repl, as user input does not work in Atom

loop do
  if action.downcase.empty? == true
    puts "well you're going to have to type something, or we'll never get anywhere"
    action = gets.chomp
  elsif action.downcase.include? "check"
    loop do
      puts check
    end
    action = gets.chomp
  elsif action.downcase.include? "take"
    thing = action.split(" ").last
    if
      room.delete("#{thing}")
      inventory.push("#{thing}")
      puts "You are now carrying"
      puts inventory
      action = gets.chomp
      break
    else
      puts "there is no #{thing} to pick up"
      action = gets.chomp
      break
    end
  elsif action.downcase.include? "drop"
   thing = action.split(" ").last
    if
      inventory.delete("#{thing}")
      room.push("#{thing}")
      puts "You have dropped #{thing}, and are now only carrying:"
      puts inventory
      action = gets.chomp
      break
    else
      puts "You're not carrying #{thing}"
      action = gets.chomp
      break
    end
  else
    puts "I'm afraid I don't understand what you want, why not try again?"
    action = gets.chomp
  end
end
