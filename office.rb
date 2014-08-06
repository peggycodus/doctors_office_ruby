def main_menu
  system 'clear'
  puts "Welcome to the Doctor's Office"
  puts "\n\n"
  puts " Please enter an item ('a', 'd', 'i', or 'p' )to work with"
  puts "\n\n"
  puts "d  Doctors"
  puts "a  Appointments"
  puts "i  Insurance"
  puts "p  Patients"
  puts "x  To exit"
  puts "\n_____________________________________________\n"
  @menu_selection = gets.chomp
end

def doctor_menu

end

def appointment_menu

end

def insurance_menu

end

def patients_menu

end

main_menu
if @menu_selection == 'd'
  doctor_menu
elsif @menu_selection == 'a'
  appointment_menu
elsif @menu_selection == 'i'
  insurance_menu
elsif @menu_selection == 'p'
  patients_menu
elsif @menu_selection == 'x'
  exit
else
  puts "That is not a valid input."
  sleep(1)
  main_menu
end
