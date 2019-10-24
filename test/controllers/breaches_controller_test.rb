require 'test_helper'

class BreachesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get breaches_index_url
    assert_response :success
  end

  test "should get show" do
    get breaches_show_url
    assert_response :success
  end

end
