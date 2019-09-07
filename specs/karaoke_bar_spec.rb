require("minitest/autorun")
require("minitest/pride")
require("pry")
require_relative("../karaoke_bar.rb")
require_relative("../room.rb")
require_relative("../guest.rb")

class BarTest < Minitest::Test

  def setup
    @room1 = Room.new("Kool Room", 30)
    @room2 = Room.new("Lame Room", 20)
    @rooms = [@room1, @room2]

    @guest1 = Guest.new("Nick", 100)
    @guest2 = Guest.new("Eddy", 100)
    @guests = [@guest1, @guest2]

    @bar = Bar.new("Kool Karaoke", @rooms, 1000, @guests)
  end

  def test_bar_has_name
    assert_equal("Kool Karaoke", @bar.name)
  end

  def test_bar_has_rooms
    assert_equal(@rooms, @bar.rooms)
  end

  def test_bar_has_till
    assert_equal(1000, @bar.till)
  end

  def test_bar_has_guests
    assert_equal(@guests, @bar.guests)
  end

  def test_rent_room
    @bar.rent_room(@guest1, @room1)
    assert_equal(1030, @bar.till)
  end

  # def test_reduce_wallet
  #   @bar.reduce_wallet(@guest1, @room1)
  #   assert_equal(70, @guest1.wallet)
  # end

end
