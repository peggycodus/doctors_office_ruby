class Appointment

  attr :date, :time, :cost

  def initialize(date, time, cost)
    @date = date
    @time = time
    @cost = cost
  end

end
