require 'test_helper'

class AuspiciadoresControllerTest < ActionController::TestCase
  setup do
    @auspiciadore = auspiciadores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auspiciadores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auspiciadore" do
    assert_difference('Auspiciadore.count') do
      post :create, auspiciadore: @auspiciadore.attributes
    end

    assert_redirected_to auspiciadore_path(assigns(:auspiciadore))
  end

  test "should show auspiciadore" do
    get :show, id: @auspiciadore
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @auspiciadore
    assert_response :success
  end

  test "should update auspiciadore" do
    put :update, id: @auspiciadore, auspiciadore: @auspiciadore.attributes
    assert_redirected_to auspiciadore_path(assigns(:auspiciadore))
  end

  test "should destroy auspiciadore" do
    assert_difference('Auspiciadore.count', -1) do
      delete :destroy, id: @auspiciadore
    end

    assert_redirected_to auspiciadores_path
  end
end
