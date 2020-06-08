require_relative '../config/environment.rb'

bill = Guest.new("Bill")
steve = Guest.new("Steve")
seattle = Listing.new("Seattle")
cali = Listing.new("Cali")
dc = Listing.new("DC")
trip1 = Trip.new(bill, seattle)
trip2 = Trip.new(bill, cali)
trip3 = Trip.new(bill, dc)
trip3 = Trip.new(steve, cali)

cali.trips

def reload
  load 'config/environment.rb'
end

Pry.start
