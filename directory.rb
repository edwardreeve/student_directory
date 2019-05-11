# First, we put all of the students into an array
students = [
  "The students of Villains Academy",
  "-------------",
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]
# then we print them
students.each do |student|
  puts student
end
# Finally, we print the total
puts "Overall, we have #{students.count} great students"