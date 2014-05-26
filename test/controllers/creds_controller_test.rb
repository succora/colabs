require 'test_helper'

class CredsControllerTest < ActionController::TestCase
  setup do
    @cred = creds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:creds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cred" do
    assert_difference('Cred.count') do
      post :create, cred: { email: @cred.email, first_name: @cred.first_name, last_name: @cred.last_name }
    end

    assert_redirected_to cred_path(assigns(:cred))
  end

  test "should show cred" do
    get :show, id: @cred
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cred
    assert_response :success
  end

  test "should update cred" do
    patch :update, id: @cred, cred: { email: @cred.email, first_name: @cred.first_name, last_name: @cred.last_name }
    assert_redirected_to cred_path(assigns(:cred))
  end

  test "should destroy cred" do
    assert_difference('Cred.count', -1) do
      delete :destroy, id: @cred
    end

    assert_redirected_to creds_path
  end
end
