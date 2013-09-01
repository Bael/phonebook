require 'test_helper'

class CompaniesControllerTest < ActionController::TestCase
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
      post :create, company: { contract: @company.contract, description: @company.description, email: @company.email, fax: @company.fax, firstname: @company.firstname, icq: @company.icq, lastname: @company.lastname, legaladdress: @company.legaladdress, name: @company.name, okpo: @company.okpo, owncellphone: @company.owncellphone, postaddress: @company.postaddress, reception: @company.reception, scancontract: @company.scancontract, secondname: @company.secondname, title: @company.title, workcellphone: @company.workcellphone, workphone: @company.workphone }
    end

    assert_redirected_to company_path(assigns(:company))
  end

  test "should show company" do
    get :show, id: @company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company
    assert_response :success
  end

  test "should update company" do
    put :update, id: @company, company: { contract: @company.contract, description: @company.description, email: @company.email, fax: @company.fax, firstname: @company.firstname, icq: @company.icq, lastname: @company.lastname, legaladdress: @company.legaladdress, name: @company.name, okpo: @company.okpo, owncellphone: @company.owncellphone, postaddress: @company.postaddress, reception: @company.reception, scancontract: @company.scancontract, secondname: @company.secondname, title: @company.title, workcellphone: @company.workcellphone, workphone: @company.workphone }
    assert_redirected_to company_path(assigns(:company))
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete :destroy, id: @company
    end

    assert_redirected_to companies_path
  end
end
