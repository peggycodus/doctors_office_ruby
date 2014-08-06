require 'rspec'
require 'doctor'
require 'appointment'
require 'insurance'
require 'patient'
require 'pg'
require 'spec_helper'
require 'Date'
require 'Time'
require 'table_print'
require 'pry'


describe Doctor do
  it 'allows you to create a doctor if both name and specialty are input' do
    test_doctor = Doctor.new('Dr. Steve', 'Optometrist')
    expect(test_doctor).to be_an_instance_of Doctor
   end

  it 'allows you to save doctors to the database ' do
    test_doctor = Doctor.new('Dr. Steve', 'Optometrist')
    test_doctor1 = Doctor.new('Dr. Doe', 'Pediatrician')
    test_doctor.save
    test_doctor1.save
    expect(Doctor.all).to eq [test_doctor, test_doctor1]
  end

  # it 'outputs the doctor id, name, and specialty for all doctors' do
  #   test_doctor = Doctor.new('Dr. Steve', 'Optometrist')
  #   test_doctor1 = Doctor.new('Dr. Doe', 'Pediatrician')
  #   test_doctor.save
  #   test_doctor1.save

  # end
end

describe Patient do
  it 'creates an instance of Patient'do
    test_patient = Patient.new('Rodger','Johnson', '06/05/1967')
    expect(test_patient).to be_an_instance_of Patient
  end

  it 'allows you to save a patient to the database if both name and birthday are input' do
    test_patient = Patient.new('Rodger', 'Johnson', '06/05/1967')
    test_patient.save
    expect(test_patient).to eq test_patient
  end

end

describe Appointment do
  it 'creates an instance of Appointment' do
    test_appointment = Appointment.new('08/07/2014', '0800', '100.00')
    expect(test_appointment).to be_an_instance_of Appointment
  end

end

describe Insurance do
  it 'creates an instance of Insurance' do
    test_insurance = Insurance.new('Health Cross')
    expect(test_insurance).to be_an_instance_of Insurance
  end

  it 'allows you to save an insurance company given the name' do
    test_insurance = Insurance.new('Red Cross')
    expect(test_insurance).to eq test_insurance
  end
end
