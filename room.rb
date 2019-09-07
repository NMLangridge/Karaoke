class Room

  attr_reader :name, :price, :guests, :songs

  def initialize(name, price)
    @name = name
    @price = price
    @guests = []
    @songs = []
  end

  def add_guest_to_room(guests)
    @guests.push(guests)
  end

  def guest_count
    return @guests.length
  end

  def remove_guest_from_room(guests)
    return @guests.shift
  end

  def add_song_to_room(songs)
    @songs.push(songs)
  end

  def song_count
    return @songs.length
  end

end
