require 'test_helper'

class InscripcionesControllerTest < ActionController::TestCase
  setup do
    @inscripcione = inscripciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inscripciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inscripcione" do
    assert_difference('Inscripcione.count') do
      post :create, inscripcione: @inscripcione.attributes
    end

    assert_redirected_to inscripcione_path(assigns(:inscripcione))
  end

  test "should show inscripcione" do
    get :show, id: @inscripcione
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inscripcione
    assert_response :success
  end

  test "should update inscripcione" do
    put :update, id: @inscripcione, inscripcione: @inscripcione.attributes
    assert_redirected_to inscripcione_path(assigns(:inscripcione))
  end

  test "should destroy inscripcione" do
    assert_difference('Inscripcione.count', -1) do
      delete :destroy, id: @inscripcione
    end

    assert_redirected_to inscripciones_path
  end
end
