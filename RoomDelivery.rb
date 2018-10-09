inventory = ["pencil","lint","penknife"]
room = ["lamp","pen","charger"] #does there need to be a distinction for items in the room array that can be picked up, and can't be picked up?

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
    action = gets.chomp
  elsif action.downcase.include? "take"
    if action.split(" ").any? {|word| word == "lamp"} = true
      room.delete!("lamp")
      inventory.push!("lamp")
      puts "You are now carrying"
      puts inventory
      break
    else
      puts "I can't do that"
      break
    end
  elsif action.downcase.include? "drop"
  elsif action.downcase.include? "ahead"
    yield( ) #this would yield to room number two
  else
    puts "I'm afraid I don't understand what you want, why not try again?"
    action = gets.chomp
  end
end

=begin
Within the above needs to be a function which allows the player to pick up or put down items
1 Take is tied to the room array
2 Drop is tied to the inventory array
3 The item string should be compared to the relevant array
4 If the string can be found in the array, it should be moved (or deleted) from one array and added to another
=end
