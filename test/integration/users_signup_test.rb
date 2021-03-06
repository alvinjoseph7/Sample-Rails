require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: {user: {name: '', email: 'alskals@kdjs', password: 'foo', password_confirmation: 'bar'}}
    end
    assert_template 'users/new'
    assert_select 'div#error_explanation'    
    assert_select 'div.alert-danger'    
  end

  test "valid signup" do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params: {user: {name: 'Alvin Joseph', email:'alvin@gma.com', password: 'password', password_confirmation: 'password'}}
    end
    follow_redirect!
    assert_template 'users/show'
    assert_not flash.empty?
  end
end
