require("minitest/autorun")
require("minitest/pride")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")
require_relative("../karaoke_bar.rb")

class RoomTest < Minitest::Test

  def setup
    @bar = Bar.new("Kool Karaoke", @rooms, 1000, @guests)

    @room1 = Room.new("Kool Room", 30)
    @room2 = Room.new("Lame Room", 20)
    @rooms = [@room1, @room2]

    @guest1 = Guest.new("Nick", 100)
    @guest2 = Guest.new("Eddy", 100)
    @guests = [@guest1, @guest2]

    @song1 = Song.new("Mr. Strathbungo’s Tartan Trousers")
    @song2 = Song.new("Facebook Friends with a Fascist")
    @songs = [@song1, @song2]
  end

  def test_room_has_name
    assert_equal("Kool Room", @room1.name)
  end

  def test_room_has_price
    assert_equal(30, @room1.price)
  end

  def test_room_starts_with_no_guests
    assert_equal(0, @room1.guest_count)
  end

  def test_add_guest_to_room
    @room1.add_guest_to_room(@guest1)
    assert_equal(1, @room1.guest_count)
  end

  def test_remove_guest_from_room
    @room1.remove_guest_from_room(@guest1)
    assert_equal(0, @room1.guest_count)
  end

  def test_add_song_to_room
    @room1.add_song_to_room(@song1)
    assert_equal(1, @room1.song_count)
  end

end
