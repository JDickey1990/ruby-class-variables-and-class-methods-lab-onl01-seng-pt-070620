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
    count={}
    @@genres.each do |genre|
     count[genre] ||= 0
     count[genre] += 1
    end
  count
 end

end