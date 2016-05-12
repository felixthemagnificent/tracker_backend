require 'test_helper'

class TestcontrollersControllerTest < ActionController::TestCase
  setup do
    @testcontroller = testcontrollers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testcontrollers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testcontroller" do
    assert_difference('Testcontroller.count') do
      post :create, testcontroller: { a: @testcontroller.a, b: @testcontroller.b, c: @testcontroller.c }
    end

    assert_redirected_to testcontroller_path(assigns(:testcontroller))
  end

  test "should show testcontroller" do
    get :show, id: @testcontroller
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testcontroller
    assert_response :success
  end

  test "should update testcontroller" do
    patch :update, id: @testcontroller, testcontroller: { a: @testcontroller.a, b: @testcontroller.b, c: @testcontroller.c }
    assert_redirected_to testcontroller_path(assigns(:testcontroller))
  end

  test "should destroy testcontroller" do
    assert_difference('Testcontroller.count', -1) do
      delete :destroy, id: @testcontroller
    end

    assert_redirected_to testcontrollers_path
  end
end
