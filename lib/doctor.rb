require 'pry'
class Doctor

    attr_accessor :name
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def appointments
      #binding.pry
      Appointment.all.select {|i| i.doctor == self}
    end
  
  
    def self.all
      @@all
    end
  
    def new_appointment(date, patient)
      Appointment.new(patient, date, self)
    end


    def patients
      #binding.pry
        appointments.map {|app| app.date}
    end
  
  end