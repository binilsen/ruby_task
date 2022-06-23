=begin 
1.You must create a record (using Ruby classes) for a 
flight. A flight has the following attributes: an id (integer), 
a flight number (string) an origin airport (string) and a 
destination airport (string).

2.Write a function called read_flight() that reads from 
the terminal values for each of the fields in a Plane 
record and returns the completed record.

3.Write a procedure called print_flight(flight) that takes a 
flight record and writes each of the fields to the terminal 
with a description for the field as well as the field value.

4.Write a function called read_flights() that calls your 
read_flight() and returns an array of flights.

5.Write a procedure called print_flights(flight) that calls 
your print_flight(flight) procedure for each flight in the 
array
=end

class Flight 
    def initialize
        @id=nil
        @flight_number=''
        @origin=''
        @destination=''
    end

    def read_flight
        print 'Enter flight ID:'
        @id=gets.chomp.to_i
        print '  Enter flight number:'
        @flight_number=gets.chomp
        print '  Enter flight origin:'
        @origin=gets.chomp
        print '  Enter flight destination:'
        @destination=gets.chomp
        "Flight Details ID:#{@id} \t Origin:#{@origin} \t Destination:#{@destination}"
    end
    def print_flight 
        puts "Plane ID:#{@id} | Flight number:#{@flight_number} \nOrgin:#{@orgin} | Destination:#{@destination}"
        10.times {print '---'}
        puts
    end


    def self.print_flights flights
        flights.each do |flight|
         flight.print_flight
        end
    end
end

def read_flights 
    flights=[]
    3.times do |i|
        flights << (Flight.new)
        flights[i].read_flight
    end
    return flights
end


Flight.print_flights read_flights