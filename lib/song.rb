
class Song
  attr_accessor :name, :artist, :genre

  @@count=0 #keeps track of num of songs
  @@genres=[]
  @@artists=[]

  def initialize(name,artist,genre)
    @name=name
    @artist=artist
    @genre=genre

    @@count+=1
    @@genres << @genre
    @@artists << @artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    new_hash={}
    @@genres.each do |spec_genre|
      if !new_hash.include?(spec_genre)
        new_hash[spec_genre]=1
      else
        new_hash[spec_genre] +=1
       #hash[spec_genre]=value
     end
   end
   new_hash
  end

  def self.artist_count
    newer_hash={}
    @@artists.each do |spec_artist|
      if !newer_hash.include?(spec_artist)
        newer_hash[spec_artist]=1
      else
        newer_hash[spec_artist] +=1
       #hash[spec_genre]=value
     end
   end
   newer_hash

  end
end
