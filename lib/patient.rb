class Patient 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(date, doctor)
    appointment = Appointment.new(date, self, doctor)
  end 
  
  def appointments 
    appointment.all.select do |appointment|
      appointment.patient == self 
    end 
  end 
  
  def doctors 
    appointments.collect do |appointment|
      appointment.doctor 
    end 
  end 
  
end 