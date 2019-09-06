require("minitest/autorun")
require("minitest/pride")
require_relative("../karaoke_bar.rb")
require_relative("../room.rb")

class BarTest < Minitest::Test

  def setup
    @room1 = Room.new("Kool Room")
    @room2 = Room.new("Lame Room")
    @rooms = [@room1, @room2]
    @bar = Bar.new("Kool Karaoke", @rooms)
  end

  def test_bar_has_name
    assert_equal("Kool Karaoke", @bar.name)
  end

  def test_bar_has_rooms
    assert_equal(@rooms, @bar.rooms)
  end

end
