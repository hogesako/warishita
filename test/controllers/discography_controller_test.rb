require 'test_helper'

class DiscographyControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get discography_show_url
    assert_response :success
  end

end
