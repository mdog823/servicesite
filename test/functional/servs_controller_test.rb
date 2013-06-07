require 'test_helper'

class ServsControllerTest < ActionController::TestCase
  setup do
    @serv = servs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create serv" do
    assert_difference('Serv.count') do
      post :create, serv: { description: @serv.description, title: @serv.title }
    end

    assert_redirected_to serv_path(assigns(:serv))
  end

  test "should show serv" do
    get :show, id: @serv
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @serv
    assert_response :success
  end

  test "should update serv" do
    put :update, id: @serv, serv: { description: @serv.description, title: @serv.title }
    assert_redirected_to serv_path(assigns(:serv))
  end

  test "should destroy serv" do
    assert_difference('Serv.count', -1) do
      delete :destroy, id: @serv
    end

    assert_redirected_to servs_path
  end
end
