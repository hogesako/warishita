require 'test_helper'

class ContentsControllerTest < ActionDispatch::IntegrationTest
  test "should get news" do
    get contents_news_url
    assert_response :success
  end

end
