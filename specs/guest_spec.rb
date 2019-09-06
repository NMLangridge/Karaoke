require("minitest/autorun")
require("minitest/pride")
require_relative("../guest")

class GuestTest < Minitest::Test

  def setup
    @guest = Guest.new("Retsuko", 100)
  end

  def test_guest_has_name
    assert_equal("Retsuko", @guest.name)
  end

  def test_guest_has_money
    assert_equal(100, @guest.wallet)
  end

end
