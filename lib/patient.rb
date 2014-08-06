class Patient

  attr :first_name, :last_name, :birthday

  def initialize(first_name, last_name, birthday)
    @first_name = first_name
    @last_name = last_name
    @birthday = birthday
  end
end
