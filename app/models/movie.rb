class Movie < ActiveRecord::Base
  def self.all_ratings
    return ['G','PG','PG-13','R']
  end
  
  def self.with_ratings(ratings_list, column)
    if ratings_list == nil or ratings_list.empty?
      return Movie.all().order(column)
    end
    return Movie.where(rating: ratings_list).order(column)
  end
end
