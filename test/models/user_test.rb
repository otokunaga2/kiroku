require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(id: 100, name:'Alice',email: 'testokunaga@gmail.com', index_users_on_email: 'testokunaga@gmail.com')
  end
  def teardown
  end
  test "valid user" do
     #assert @user.valid?
  end

  test "invalid user" do
     @user.name = '' 
     #assert_not @user.valid?
  end
end
