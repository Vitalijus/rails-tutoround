require "test_helper"

class ClaimsControllerTest < ActionController::TestCase

  def claim
    @claim ||= claims :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:claims)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Claim.count') do
      post :create, claim: {  }
    end

    assert_redirected_to claim_path(assigns(:claim))
  end

  def test_show
    get :show, id: claim
    assert_response :success
  end

  def test_edit
    get :edit, id: claim
    assert_response :success
  end

  def test_update
    put :update, id: claim, claim: {  }
    assert_redirected_to claim_path(assigns(:claim))
  end

  def test_destroy
    assert_difference('Claim.count', -1) do
      delete :destroy, id: claim
    end

    assert_redirected_to claims_path
  end
end
