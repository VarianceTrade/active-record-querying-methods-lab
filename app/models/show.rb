class Show < ActiveRecord::Base

    def self.highest_rating
        rating = Show.maximum(:rating)  #find_by??? .order???
        rating
    end

    def self.most_popular_show
        show = Show.find_by(rating: highest_rating)
        show
    end

    def self.lowest_rating
        rating = Show.minimum(:rating)
        rating
    end

    def self.least_popular_show
        show = Show.find_by(rating: lowest_rating)
        show
    end

    def self.ratings_sum
        sum = Show.sum(:rating)
        sum
    end

    def self.popular_shows
        shows = Show.where ("rating > 5")
    end

    def self.shows_by_alphabetical_order
        alphabetical = Show.order(name: :asc)
    end

end





# highest_rating: this method should return the highest value in the ratings column. hint: if there is a minimum Active Record method, might there be a maximum method?

# most_popular_show: this method should return the show with the highest rating. hint: use the highest_rating method as a helper method.

# lowest_rating: returns the lowest value in the ratings column.

# least_popular_show: returns the show with the lowest rating.

# ratings_sum: returns the sum of all of the ratings.

# popular_shows: returns an array of all of the shows that have a rating greater than 5. hint: use the where Active Record method.

# shows_by_alphabetical_order: returns an array of all of the shows sorted in alphabetical order according to their names. hint: use the order Active Record method.