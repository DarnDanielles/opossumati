require 'test_helper'

class TakersControllerTest < ActionController::TestCase
  setup do
    @taker = takers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:takers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taker" do
    assert_difference('Taker.count') do
      post :create, taker: { email: @taker.email, survey_id: @taker.survey_id }
    end

    assert_redirected_to taker_path(assigns(:taker))
  end

  test "should show taker" do
    get :show, id: @taker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taker
    assert_response :success
  end

  test "should update taker" do
    patch :update, id: @taker, taker: { email: @taker.email, survey_id: @taker.survey_id }
    assert_redirected_to taker_path(assigns(:taker))
  end

  test "should destroy taker" do
    assert_difference('Taker.count', -1) do
      delete :destroy, id: @taker
    end

    assert_redirected_to takers_path
  end
end
