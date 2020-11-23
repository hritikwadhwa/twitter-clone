require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(name: "akkywadhwa", email: "akkywadhwa@gmail.com")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = "   "
    assert_not @user.valid?
  end

  test "length of name should be less than 50" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end

  test "length of email should be less than 255" do
    @user.email = "a" * 256
    assert_not @user.valid?
  end
end
