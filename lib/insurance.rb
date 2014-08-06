class Insurance

  attr :name

  def initialize(name)
    @name = name
  end

  def ==(another_insurance)
    self.name == another_insurance.name
  end

  def save
    DB.exec("INSERT INTO insurance (name) VALUES ('#{@name}');")
  end

  def self.all
    insurance_companies = []
    results = DB.exec("SELECT * FROM insurance;")
    results.each do |result|
      insurance_companies << Insurance.new(result['name'])
    end
    insurance_companies
  end
end
