require("minitest/autorun")
require("minitest/pride")
require_relative("../song")

class SongTest < Minitest::Test

  def setup
    @song = Song.new("Right Wing Stories, Sad Boy Tories")
  end

  def test_song_has_title
    assert_equal("Right Wing Stories, Sad Boy Tories", @song.title)
  end

end
