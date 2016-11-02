require 'test_helper'

class BoatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index.html.erb" do
    get boats_index.html.erb_url
    assert_response :success
  end

  test "should get new.html.erb" do
    get boats_new.html.erb_url
    assert_response :success
  end

  test "should get edit.html.erb" do
    get boats_edit.html.erb_url
    assert_response :success
  end

  test "should get show.html.erb" do
    get boats_show.html.erb_url
    assert_response :success
  end

end
