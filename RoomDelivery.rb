inventory = ["broken pencil","pocket lint","trusty, but ultimately useless, penknife"]
room = ["lamp","pen","phone charger","widescreen television"] #does there need to be a distinction for items in the room array that can be picked up, and can't be picked up?

# this is going to be some introductory text, which invites user input
puts "You stand in the centre of a dimly lit room."
puts "You have no real purpose in the room, but you can see a door AHEAD of you, as well as several items at which you could LOOK"
puts "what would you like to do?"
action = gets.downcase.chomp # weirdly I can't get this to accept user input in Atom, but I can in Repl

if action.empty? == true
  puts "well you're going to have to type something, or we'll never get anywhere"
elsif action.include? "look"
  puts "You are standing in a dimly lit room, there are several items which look small enough to carry"
else
  puts "I'm afraid I don't understand what you want, why not try again?"
  action = gets.downcase.chomp
  #from here loop back to start
end
