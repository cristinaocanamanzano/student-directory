def input_students
  puts "Please enter the names of the student"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    puts "What is your cohort?"
    cohort = gets.chomp.to_s
    # add the student hash to the array
    students << {name: name, cohort: cohort}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  cohorts = students.map{ |student| student[:cohort]}.uniq
  cohorts.each do |cohort|
    puts cohort.capitalize
    students.each do |student|
      if student[:cohort] == cohort
        puts student[:name]
      end
    end
  end
end

def print_footer(students)
  if students.count == 1
    puts "Overall, we have #{students.count} great student"
  elsif students.count > 1
    puts "Overall, we have #{students.count} great students"
  end
end

students = input_students
#nothing happens until we call the methods
print_header
print(students)
print_footer(students)