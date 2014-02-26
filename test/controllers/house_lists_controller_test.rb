require 'test_helper'

class HouseListsControllerTest < ActionController::TestCase
  setup do
    @house_list = house_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:house_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create house_list" do
    assert_difference('HouseList.count') do
      post :create, house_list: { address: @house_list.address, city: @house_list.city, state: @house_list.state, zipCode: @house_list.zipCode }
    end

    assert_redirected_to house_list_path(assigns(:house_list))
  end

  test "should show house_list" do
    get :show, id: @house_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @house_list
    assert_response :success
  end

  test "should update house_list" do
    patch :update, id: @house_list, house_list: { address: @house_list.address, city: @house_list.city, state: @house_list.state, zipCode: @house_list.zipCode }
    assert_redirected_to house_list_path(assigns(:house_list))
  end

  test "should destroy house_list" do
    assert_difference('HouseList.count', -1) do
      delete :destroy, id: @house_list
    end

    assert_redirected_to house_lists_path
  end
end
