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
    doctors = []
    results = DB.exec("SELECT * FROM doctors;")
    results.each do |doctor|
      doctors << Doctor.new(doctor['name'], doctor['specialty'])
    end
    doctors
  end

  def ==(another_doctor)
    self.name == another_doctor.name
  end
end
