require 'test_helper'

class OppsControllerTest < ActionController::TestCase
  setup do
    @opp = opps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create opp" do
    assert_difference('Opp.count') do
      post :create, opp: { title: @opp.title }
    end

    assert_redirected_to opp_path(assigns(:opp))
  end

  test "should show opp" do
    get :show, id: @opp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @opp
    assert_response :success
  end

  test "should update opp" do
    put :update, id: @opp, opp: { title: @opp.title }
    assert_redirected_to opp_path(assigns(:opp))
  end

  test "should destroy opp" do
    assert_difference('Opp.count', -1) do
      delete :destroy, id: @opp
    end

    assert_redirected_to opps_path
  end
end
