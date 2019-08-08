require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "Example User", email: "user@example.com")
  end

  test "should be valid" do
    assert @user.valid? # succeds if @user.valid? returns true else returns false
  end

  test "name should be present" do
    @user.name = ""   # returns true if a user name is not a blank string.
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = ""   # returns true if a user email is not a blank string.
    assert_not @user.valid?
  end
end