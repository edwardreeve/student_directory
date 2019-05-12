def input_students
  puts 'Please enter the names of the students'
  puts 'To finish, just hit return twice'
  # create an empty array
  @students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    @students << { name: name, cohort: :november }
    puts "Now we have #{@students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  @students
end

def input_hobbies
  puts 'Now enter each student\'s hobbies'
  @students.each do |student|
    puts "#{student[:name]}'s hobbies;"
    hobbies = gets.chomp
    student[:hobbies] = hobbies
  end
end

def input_height
  puts 'Now enter each student\'s height in cm'
  @students.each do |student|
    puts "#{student[:name]}'s height;"
    height = gets.chomp
    student[:height] = height
  end
end

def print_header
  puts 'The students of Villains Academy'
  puts '-------------'
end

def print(students)
  ind = 0
  until ind == students.length
    puts "#{ind + 1}. #{students[ind][:name]}, enjoys #{students[ind][:hobbies]}, #{students[ind][:height]}cm, #{students[ind][:cohort]} cohort"
    ind += 1
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end
students = input_students
input_hobbies
input_height
# nothing happens until we call each method
print_header
print(students)
print_footer(students)
