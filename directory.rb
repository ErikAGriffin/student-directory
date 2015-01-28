
student_directory = [
  {name: "Martha", cohort: "February"},
  {name: "Marcy", cohort: "February"},
  {name: "Marlene", cohort: "February"},
  {name: "and me", cohort: "February"}]




def inputStudents

  puts ""
  puts "Please enter the student's name to add them to the directory"
  puts "When done enter a blank line"

  students = []


    student = gets.chomp
  while student != ""

    students << {name: student, cohort: "February"}

    puts "We now have #{students.count} students. How lovely."

    student = gets.chomp
  end

  # Returns the array.
  # Apparently I could return it by just having 'students',
  # but I don't think that is as clear.
  return students

end


def printHeader
puts "Current Maker's Academy Students"
puts "--------------------------------"
end


def printEach(students)
# is there a significance of using .each do |x|
# versus .each { |x| }  ?
# other than that you have to use 'end' of course.


  i = 1

  students.each {|student|
    puts "#{i}. #{student[:name]} from #{student[:cohort]} cohort"
    i+=1
  }
end

def printFooter(students)
# Decided its cleaner to put it first into a variable
# Remember it's not a string, but the interpolation is
# showing the number.
  student_count = students.count
  puts "There are #{student_count} students in total."
end

## Program Start

students = inputStudents
printHeader
printEach(students)
printFooter(students)

