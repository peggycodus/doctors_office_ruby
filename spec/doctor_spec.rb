require 'rspec'
require 'doctor'
require 'appointment'
require 'insurance'
require 'patient'
require 'pg'
require 'spec_helper'

describe Doctor do
  it 'allows you to create a doctor' do
    test_doctor = Doctor.new('Dr. Steve', 'Optometrist')
    expect(test_doctor).to be_an_instance_of Doctor
   end

  it 'allows you to save a doctor to the database if both name and specialty are input' do
    test_doctor = Doctor.new('Dr. Steve', 'Optometrist')
    doctor.save
    expect(Doctor).to eq test_doctor
  end
end


