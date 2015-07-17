require 'test_helper'

class MaggiewusControllerTest < ActionController::TestCase
  setup do
    @maggiewu = maggiewus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:maggiewus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create maggiewu" do
    assert_difference('Maggiewu.count') do
      post :create, maggiewu: { name: @maggiewu.name }
    end

    assert_redirected_to maggiewu_path(assigns(:maggiewu))
  end

  test "should show maggiewu" do
    get :show, id: @maggiewu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @maggiewu
    assert_response :success
  end

  test "should update maggiewu" do
    patch :update, id: @maggiewu, maggiewu: { name: @maggiewu.name }
    assert_redirected_to maggiewu_path(assigns(:maggiewu))
  end

  test "should destroy maggiewu" do
    assert_difference('Maggiewu.count', -1) do
      delete :destroy, id: @maggiewu
    end

    assert_redirected_to maggiewus_path
  end
end
