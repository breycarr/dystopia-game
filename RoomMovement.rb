room1 = [1]
room2 = []


puts "You stand in the centre of a room."
puts "You can see an open door ahead of you"
puts ' '
puts "What would you like to do?"
action = gets.chomp

loop do
  if action.downcase.include? ("check")
    puts "you are in "
  elsif action.downcase.include? ("ahead")
    room1.delete_at(0)
    room2.push(0)
  elsif action.downcase.include? ("back")
    room2.delete_at(0)
    room1.push(0)
  else
    puts "I'm afraid I don't understand what you want, what would you like to do?"
  end
  if room1.empty? == false
    puts "you are in room1"
  elsif room2.empty? == false
    puts "you are in room2"
  else
    puts "I don't know where you are"
  end
  action = gets.chomp
end
