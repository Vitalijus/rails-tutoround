require "test_helper"

class TutorsControllerTest < ActionController::TestCase

  def tutor
    @tutor ||= tutors :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:tutors)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Tutor.count') do
      post :create, tutor: {  }
    end

    assert_redirected_to tutor_path(assigns(:tutor))
  end

  def test_show
    get :show, id: tutor
    assert_response :success
  end

  def test_edit
    get :edit, id: tutor
    assert_response :success
  end

  def test_update
    put :update, id: tutor, tutor: {  }
    assert_redirected_to tutor_path(assigns(:tutor))
  end

  def test_destroy
    assert_difference('Tutor.count', -1) do
      delete :destroy, id: tutor
    end

    assert_redirected_to tutors_path
  end
end
