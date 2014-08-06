class Doctor

  attr :name, :specialty, :id


  def initialize(name, specialty)
    @name = name
    @specialty = specialty
  end

  def save
    DB.exec("INSERT INTO doctors (name, specialty) VALUES ('#{@name}', '#{@specialty}')")
  end

  def self.all
    # doctors = []
    all_doctors = DB.exec("SELECT * FROM doctors;")
    # results.each do |doctor|
    #   doctors << Doctor.new(doctor['name'], doctor['specialty'])
    # end
    all_doctors
  end

  def id
    @id = DB.exec("SELECT * FROM doctors WHERE name = '#{@name}';")
  end

  def delete number
    DB.exec("DELETE FROM doctors WHERE id = '#{number}';")
    puts " doctor: #{number} deleted."
  end

  def ==(another_doctor)
    self.name == another_doctor.name
  end
end
