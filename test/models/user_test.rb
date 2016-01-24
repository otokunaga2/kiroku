require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(id: 100, name:'Alice',email: 'test@example.com')
    p @user.methods
  end

  test "the truth" do
     assert_not @user.valid?
  end
end
