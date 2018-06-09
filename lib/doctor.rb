class Doctor 
  attr_accessor :name, :appointment 
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_appointment
    appointment = Appointment.new(date, patient, self)
  end 
  
  def appointments
    appointment.all.select do |appointment|
      appointment.doctor == self 
    end 
  end 
  
  def patients 
    appointments.collect do |appointment|
      appointment.patient 
    end 
  end 
  
end 