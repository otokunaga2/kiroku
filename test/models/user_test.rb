require 'test_helper'

class UserTest < ActiveSupport::TestCase
  include Devise::TestHelpers
  def setup
    @user = User.new(id: 100, name:'Alice',email: 'testokunaga@gmail.com')
  end
  def teardown
  end
  test "invalid email user" do
    @user.email = ''
    assert_not @user.valid?
  end

  test "invalid name user" do
    @user.name = '' 
    assert_not @user.valid?
  end
end
