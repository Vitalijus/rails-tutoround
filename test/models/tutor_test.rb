require "test_helper"

class TutorTest < ActiveSupport::TestCase

  def tutor
    @tutor ||= Tutor.new
  end

  def test_address
    assert "37A Ellerton Road, Dagenham, Essex, RM94HX, United Kingdom", @tutor.address
  end

end
