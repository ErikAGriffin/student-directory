
student_directory = ["Martha","Marcy","Marlene","and me"]

# I think this particular use of methods makes the code verbose
# and less clear.

def printHeader
puts "Current Maker's Academy Students"
puts "--------------------------------"
end


def printEach(items)
# is there a significance of using .each do |x|
# versus .each { |x| }  ?
# other than that you have to use 'end' of course.

  items.each {|item|
    puts item
  }
end

def printFooter(items)
# Decided its cleaner to put it first into a variable
# Remember it's not a string, but the interpolation is
# showing the number.
  student_count = items.count
puts "#{student_count} students in total."
end

printHeader
printEach(student_directory)
printFooter(student_directory)

