require 'test_helper'

class RailwaysControllerTest < ActionController::TestCase
  setup do
    @railway = railways(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:railways)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create railway" do
    assert_difference('Railway.count') do
      post :create, railway: { firstname: @railway.firstname, lastname: @railway.lastname, name: @railway.name, phone2: @railway.phone2, phone: @railway.phone, secondname: @railway.secondname }
    end

    assert_redirected_to railway_path(assigns(:railway))
  end

  test "should show railway" do
    get :show, id: @railway
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @railway
    assert_response :success
  end

  test "should update railway" do
    put :update, id: @railway, railway: { firstname: @railway.firstname, lastname: @railway.lastname, name: @railway.name, phone2: @railway.phone2, phone: @railway.phone, secondname: @railway.secondname }
    assert_redirected_to railway_path(assigns(:railway))
  end

  test "should destroy railway" do
    assert_difference('Railway.count', -1) do
      delete :destroy, id: @railway
    end

    assert_redirected_to railways_path
  end
end
