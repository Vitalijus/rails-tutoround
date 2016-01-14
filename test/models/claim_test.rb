require "test_helper"

class ClaimTest < ActiveSupport::TestCase

  def claim
    @claim ||= Claim.new
  end

  def test_valid
    assert claim.valid?
  end

end
