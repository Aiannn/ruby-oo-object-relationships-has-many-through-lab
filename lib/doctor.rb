#require 'pry'

class Doctor 
    attr_accessor :name 
    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end 

    def self.all
        @@all
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end     

    def appointments 
        Appointment.all.select do |element|
            element.doctor == self
        end
    end 

    def patients 
        appointments.map do |element|
            element.patient 
        end 
    end     
end

#binding.pry 