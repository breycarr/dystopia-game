#only runs in repl, not in atom-runner

inventory = ["pencil","lint","penknife"]
room = ["lamp","pen","charger"]

def check (action,room,inventory)
  if action.downcase.include? "inventory"
    if inventory.empty? == false
    puts "You are carrying"
    puts inventory
  else
    puts "Your pockets are empty."
  end
  elsif action.downcase.include? "room"
    if room.empty? == false
      puts "in the room, you can see"
      puts room
    else
      puts "You have taken everything that you are able."
    end
  else
    puts "You'll need to tell me what you want to check!"
  end
end

def take(thing,room,inventory)
  if #what if the player wants to take everything?
    room.delete("#{thing}")
    inventory.push("#{thing}")
    puts "You are now carrying"
    puts inventory
  else
    puts "There is no #{thing} to pick up"
  end
end

def drop(thing,room,inventory)
  if #what if the player wants to drop everything?
    inventory.delete("#{thing}")
    room.push("#{thing}")
    puts "You have dropped #{thing}, and are now only carrying:"
    puts inventory
  else
    puts "You're not carrying #{thing}"
  end
end

puts "You stand in the centre of a dimly lit room."
puts "You can see several object you might be able to pick up"
puts " "
puts "In your inventory is:"
puts inventory
puts " "
puts "What would you like to do?"
action = gets.chomp

loop do
  if action.downcase.empty? == true
    puts "Well you're going to have to type something, or we'll never get anywhere"
  elsif action.downcase.include? "check"
    check(action,room,inventory)
  elsif action.downcase.include? "take"
    thing = action.split(" ").last
    take(thing,room,inventory)
  elsif action.downcase.include? "drop"
   thing = action.split(" ").last
   drop(thing,room,inventory)
  else
    puts "I'm afraid I don't understand what you want, what would you like to do?"
  end
action = gets.chomp
end
