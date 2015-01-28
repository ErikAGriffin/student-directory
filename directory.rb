
student_directory = [
  {name: "Martha", cohort: "February"},
  {name: "Marcy", cohort: "February"},
  {name: "Marlene", cohort: "February"},
  {name: "and me", cohort: "February"}]

# I think this particular use of methods makes the code verbose
# and less clear.

def printHeader
puts "Current Maker's Academy Students"
puts "--------------------------------"
end


def printEach(students)
# is there a significance of using .each do |x|
# versus .each { |x| }  ?
# other than that you have to use 'end' of course.

  students.each {|student|
    puts "#{student[:name]} from #{student[:cohort]} cohort"
  }
end

def printFooter(students)
# Decided its cleaner to put it first into a variable
# Remember it's not a string, but the interpolation is
# showing the number.
  student_count = students.count
puts "#{student_count} students in total."
end

## Program Start

printHeader
printEach(student_directory)
printFooter(student_directory)

