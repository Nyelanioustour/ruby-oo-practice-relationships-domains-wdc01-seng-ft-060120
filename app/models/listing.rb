class Listing

    @@all_listings = []

    def initialize(city)
        @city = city
        @@all_listings << self
    end

    def guest
       matching_trips = self.trips

       matching_guests = matching_trips.map do |trips|
        trips.guest 
         end

    end

    def trips
        matching_trips = Trip.all.select do |trip|
            trip.listing == self
           end
    end

    def trip_count
        self.trips.count
    end

    def all_listings
        @@all
    end
end