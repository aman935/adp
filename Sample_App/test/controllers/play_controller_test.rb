require 'test_helper'

class PlayControllerTest < ActionDispatch::IntegrationTest
  test "should get player" do
    get play_player_url
    assert_response :success
  end

end
