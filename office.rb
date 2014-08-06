require 'table_print'
require './lib/doctor'
require './lib/appointment'
require './lib/insurance'
require './lib/patient'
require 'pg'
require 'Date'
require 'Time'

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
  system 'clear'
  tp Doctor.all
  puts "Press 'a' to add a doctor"
  puts "Enter the ID to edit or delete a doctor, or add patients"
  @input_doctors_id = gets.chomp
  if Doctor.all.has_value?(@input_doctors_id)
    doctor_sub_menu
  elsif @input_doctors_id == 'a'
    puts "Enter the Doctor's name"
    doc_name = gets.chomp
    puts "Enter the Doctor's specialty"
    doc_specialty = gets.chomp
    new_doc = Doctor.new(doc_name, doc_specialty)
    new_doc.save
    puts "You have added #{doc_name} to the database"
    doctor_menu
  else
    puts "That is not a valid input. Please enter an ID from the list."
    doctor_menu
  end
end

def doctor_sub_menu
    puts "Press 'e' to edit this doctor"
    puts "Press 'd' to delete this doctor"
    puts "Press 'p' to add patients for this doctor"
    puts "Press 'm' to return to main menu"
    @selected_doctor_input = gets.chomp
    if @selected_doctor_input == 'e'
    elsif @selected_doctor_input == 'd'
    elsif @selected_doctor_input == 'p'
    elsif @selected_doctor_input == 'm'
      doctor_menu
    else
      puts "That is not a valid input. Please enter a valid menu option."
      doctor_sub_menu
    end
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
