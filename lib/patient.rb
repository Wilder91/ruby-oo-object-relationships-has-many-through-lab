require 'pry'
class Patient 
   
    attr_accessor :name, :appointment, :doctor

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def doctors 
        appointments.map {|app| app.doctor}
    end

    def self.all 
        @@all 
    end


    def appointments 
       #binding.pry
        Appointment.all.select {|i| i.patient == self}
    end

   

    

end