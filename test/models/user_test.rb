require "test_helper"

class UserTest < ActiveSupport::TestCase

  def user
    @user ||= User.new
  end

  def test_address
    assert "37A Ellerton Road, Dagenham, Essex, RM94HX, United Kingdom", @user.address
  end

end
