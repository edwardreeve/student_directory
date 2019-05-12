def input_students
  puts 'Please enter the names of the students'
  puts 'To finish, just hit return twice'
  @students = []
  name = gets.chomp
  num = 0
  until name.empty?
    @students << { name: name, cohort: :november }
    num += 1
    puts "Now we have #{@students.count} students" if num > 1
    puts 'Now we have 1 student' if num == 1
    name = gets.chomp
  end
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
