
student_directory = [
  {name: "Martha", cohort: "February"},
  {name: "Marcy", cohort: "February"},
  {name: "Marlene", cohort: "February"},
  {name: "and me", cohort: "February"}]

def show_menu

  directory = []

  loop do
    puts "Student Directory".center(30,'..')
    puts "Menu...".center(30,'..')
    puts "1. Add Students"
    puts "2. Print Student Directory"
    #puts "3. "
    #puts "4. "
    puts "0. Exit"

    input = gets.chomp


    case input

      when '1'
        directory << input_students
      when '2'
        print_all(directory.flatten!)
      #when '3'
      #when '4'
      when '0',""
      break
      else
        puts "Sorry, #{input} isn't a valid choice."
    end


  end
end



def input_students

  puts "Please enter the student's name to add them to the directory"
  puts "When done enter a blank line"

  students = []


    student = gets.chomp
  while student != ""

    students << {name: student, cohort: "February"}

    if students.count == 1
      puts "We now have #{students.count} new student. How lovely."
    else
      puts "We now have #{students.count} new students. How lovely."
    end



    student = gets.chomp
  end

  # Returns the array.
  # Apparently I could return it by just having 'students',
  # but I don't think that is as clear.
  return students

end


def print_header
puts "Current Maker's Academy Students"
puts "--------------------------------"
end


  def print_all(students)
# is there a significance of using .each do |x|
# versus .each { |x| }  ?
# other than that you have to use 'end' of course.
    # Note: removed the 'M' only functionality from previous exercise.

  print_header
  i = 1
  students.each {|student|
    puts "#{i}. #{student[:name]} from #{student[:cohort]} cohort"
    i+=1
  }
print_footer(students)
puts "Press enter to return to menu"
gets
end

def print_footer(students)
# Decided its cleaner to put it first into a variable
# Remember it's not a string, but the interpolation is
# showing the number.
  student_count = students.count
  puts "There are #{student_count} students in total."
end

## Program Start ##


show_menu

