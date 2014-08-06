class Patient

  attr :first_name, :last_name, :birthday, :name

  def initialize(first_name, last_name, birthday)
    @first_name = first_name
    @last_name = last_name
    @name = first_name + last_name
    @birthday = Time.strptime(birthday, "%m/%d/%Y")
    puts "#{@birthday}"
  end

  def ==(another_patient)
    self.name == another_patient.name
  end

  def save
    DB.exec("INSERT INTO patients (last_name, first_name, birthday) VALUES ('#{@last_name}', '#{@first_name}', '#{@birthday}');")
  end

  def self.all
    patients = []
    results = DB.exec("SELECT * FROM patients;")
    results.each do |result|
      patients << Patient.new(result['name'], result['birthday'])
    end
    patients
  end
end
