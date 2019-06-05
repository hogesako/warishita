require 'test_helper'

class GoodsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get goods_show_url
    assert_response :success
  end

end
