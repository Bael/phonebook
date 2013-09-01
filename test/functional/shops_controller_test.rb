require 'test_helper'

class ShopsControllerTest < ActionController::TestCase
  setup do
    @shop = shops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shop" do
    assert_difference('Shop.count') do
      post :create, shop: { contract: @shop.contract, description: @shop.description, email: @shop.email, fax: @shop.fax, firstname: @shop.firstname, icq: @shop.icq, lastname: @shop.lastname, legaladdress: @shop.legaladdress, name: @shop.name, okpo: @shop.okpo, owncellphone: @shop.owncellphone, postaddress: @shop.postaddress, reception: @shop.reception, scancontract: @shop.scancontract, secondname: @shop.secondname, station: @shop.station, tgnl: @shop.tgnl, title: @shop.title, workcellphone: @shop.workcellphone, workphone: @shop.workphone }
    end

    assert_redirected_to shop_path(assigns(:shop))
  end

  test "should show shop" do
    get :show, id: @shop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shop
    assert_response :success
  end

  test "should update shop" do
    put :update, id: @shop, shop: { contract: @shop.contract, description: @shop.description, email: @shop.email, fax: @shop.fax, firstname: @shop.firstname, icq: @shop.icq, lastname: @shop.lastname, legaladdress: @shop.legaladdress, name: @shop.name, okpo: @shop.okpo, owncellphone: @shop.owncellphone, postaddress: @shop.postaddress, reception: @shop.reception, scancontract: @shop.scancontract, secondname: @shop.secondname, station: @shop.station, tgnl: @shop.tgnl, title: @shop.title, workcellphone: @shop.workcellphone, workphone: @shop.workphone }
    assert_redirected_to shop_path(assigns(:shop))
  end

  test "should destroy shop" do
    assert_difference('Shop.count', -1) do
      delete :destroy, id: @shop
    end

    assert_redirected_to shops_path
  end
end
