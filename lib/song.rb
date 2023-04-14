class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
  end

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
    # @@genres.tally
    genre_talley = {}
    @@genres.each do |genre|
      if genre_talley[genre]
        genre_talley[genre] += 1
      else
        genre_talley[genre] = 1
      end
    end
    genre_talley
  end

  def self.artist_count
    # @@artists.tally
    artist_talley = {}
    @@artists.each do |artist|
      if artist_talley[artist]
        artist_talley[artist] += 1
      else
        artist_talley[artist] = 1
      end
    end
    artist_talley
  end
end
