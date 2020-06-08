require_relative '../config/environment.rb'

bill = Guest.new("Bill")
ti01 = Guest.new("Bill")
steve = Guest.new("Steve")

seattle = Listing.new("Seattle")
cali = Listing.new("Cali")
dc = Listing.new("DC")
ny = Listing.new("New York")

trip1 = Trip.new(bill, seattle)
trip45 = Trip.new(bill, seattle)
trip33 = Trip.new(bill, seattle)
trip2 = Trip.new(bill, cali)
trip3 = Trip.new(bill, dc)
trip4 = Trip.new(bill, dc)
trip7 = Trip.new(bill, dc)
trip5 = Trip.new(steve, cali)
trip6 = Trip.new(steve, ny)

def reload
  load 'config/environment.rb'
end

Pry.start
