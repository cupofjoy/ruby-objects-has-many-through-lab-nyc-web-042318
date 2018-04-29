require 'pry'

class Doctor
  attr_accessor :name, :doctor

  def initialize(name)
    @name = name
    @appointments = []
  end

  def appointments
    @appointments
  end

  def add_appointment(appointment)
    appointment.doctor = self
    @appointments << appointment
  end

  def patients
    @appointments.map do |appointment|
      appointment.patient
    end
  end
end
