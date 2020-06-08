class Listing
    attr_accessor :city
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

    def self.all
        @@all_listings
    end

    def self.all_by_city(city)
        matching_listing = self.all.select do |listing|
            listing.city == city
        end
    end
    def self.most_popular
        
        listing_output = nil
        trip_count = 0

        Listing.all.each do |listing|
            if listing.trip_count >= trip_count
            trip_count = listing.trip_count
            listing_output = listing
            end
        end
    end

end