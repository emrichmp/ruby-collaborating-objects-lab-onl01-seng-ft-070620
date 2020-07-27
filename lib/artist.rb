class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all()
    @@all
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
  end
  
  def songs()
    @songs
  end
  
  def self.find_or_create_by_name(name)
    @@all.each do |artist_name|
      if name == artist_name
        self
      else
        artist = Artist.new(name)
      end
    end
    #self
  end
  
  def print_songs()
    @songs.each do |song|
      puts "#{song.name}"
    end
  end
  
end