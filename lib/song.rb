class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = Hash.new(0)
  @@artist_count = Hash.new(0)

  def initialize(name, artist, genre)
    @artist = artist
    @genre = genre
    @name = name
    @@count += 1
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
    @@genres.each {|genre| @@genre_count[genre] += 1}
    @@genre_count
  end

  def self.artist_count
    @@artists.each {|artist| @@artist_count[artist] += 1}
    @@artist_count
  end
end
