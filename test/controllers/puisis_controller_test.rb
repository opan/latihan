require 'test_helper'

class PuisisControllerTest < ActionController::TestCase
  setup do
    @puisi = puisis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:puisis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create puisi" do
    assert_difference('Puisi.count') do
      post :create, puisi: { puisi_con: @puisi.puisi_con, puisi_for: @puisi.puisi_for, puisi_tema: @puisi.puisi_tema, puisi_type: @puisi.puisi_type, title: @puisi.title }
    end

    assert_redirected_to puisi_path(assigns(:puisi))
  end

  test "should show puisi" do
    get :show, id: @puisi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @puisi
    assert_response :success
  end

  test "should update puisi" do
    patch :update, id: @puisi, puisi: { puisi_con: @puisi.puisi_con, puisi_for: @puisi.puisi_for, puisi_tema: @puisi.puisi_tema, puisi_type: @puisi.puisi_type, title: @puisi.title }
    assert_redirected_to puisi_path(assigns(:puisi))
  end

  test "should destroy puisi" do
    assert_difference('Puisi.count', -1) do
      delete :destroy, id: @puisi
    end

    assert_redirected_to puisis_path
  end
end
