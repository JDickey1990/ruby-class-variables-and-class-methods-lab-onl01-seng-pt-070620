class Song
  
 @@count= 0
 @@artists=[]
 @@genres=[]
 
  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count +=1
    @@artists<< artist
    @@genres<< genre
  end

attr_accessor :name, :artist, :genre

  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
    
  def self.genre_count
    genre_ count={}
    @@genres.each do |genre|
     genre_count[genre] ||= 0
     genre_count[genre] += 1
    end
  genre_count
 end

end