require("minitest/autorun")
require("minitest/pride")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class RoomTest < Minitest::Test

  def setup
    @room = Room.new("Kool Room")

    @guest1 = Guest.new("Nick", 10)
    @guest2 = Guest.new("Eddy", 10)
    @guests = [@guest1, @guest2]

    @song1 = Song.new("Mr. Strathbungo’s Tartan Trousers")
    @song2 = Song.new("Facebook Friends with a Fascist")
    @songs = [@song1, @song2]
  end

  def test_room_has_name
    assert_equal("Kool Room", @room.name)
  end

  def test_room_starts_with_no_guests
    assert_equal(0, @room.guest_count)
  end

  def test_add_guest_to_room
    @room.add_guest_to_room(@guest1)
    assert_equal(1, @room.guest_count)
  end

  def test_remove_guest_from_room
    @room.remove_guest_from_room(@guest1)
    assert_equal(0, @room.guest_count)
  end

  def test_add_song_to_room
    @room.add_song_to_room(@song1)
    assert_equal(1, @room.song_count)
  end

end
