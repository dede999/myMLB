require 'test_helper'

class StandingsControllerTest < ActionDispatch::IntegrationTest
  test "should get divisional" do
    get divisional_url
    assert_response :success
  end

  test "should get wc" do
    get standings_wc_url
    assert_response :success
  end
end
