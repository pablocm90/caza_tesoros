require 'test_helper'

class HintsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hints_index_url
    assert_response :success
  end

  test "should get show" do
    get hints_show_url
    assert_response :success
  end

end
