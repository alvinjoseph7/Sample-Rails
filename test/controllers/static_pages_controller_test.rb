require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @common_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get root" do  
    get root_path
    assert_response :success
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", @common_title
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | #{@common_title}"
  end
  
  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@common_title}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | #{@common_title}"
  end
end