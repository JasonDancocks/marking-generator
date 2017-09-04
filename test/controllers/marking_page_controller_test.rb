require 'test_helper'

class MarkingPageControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get marking_page_new_url
    assert_response :success
  end

  test "should get create" do
    get marking_page_create_url
    assert_response :success
  end

  test "should get show" do
    get marking_page_show_url
    assert_response :success
  end

end
