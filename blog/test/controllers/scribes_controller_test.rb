require 'test_helper'

class ScribesControllerTest < ActionController::TestCase
  setup do
    @scribe = scribes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scribes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scribe" do
    assert_difference('Scribe.count') do
      post :create, scribe: { body: @scribe.body, date: @scribe.date, title: @scribe.title }
    end

    assert_redirected_to scribe_path(assigns(:scribe))
  end

  test "should show scribe" do
    get :show, id: @scribe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scribe
    assert_response :success
  end

  test "should update scribe" do
    patch :update, id: @scribe, scribe: { body: @scribe.body, date: @scribe.date, title: @scribe.title }
    assert_redirected_to scribe_path(assigns(:scribe))
  end

  test "should destroy scribe" do
    assert_difference('Scribe.count', -1) do
      delete :destroy, id: @scribe
    end

    assert_redirected_to scribes_path
  end
end
