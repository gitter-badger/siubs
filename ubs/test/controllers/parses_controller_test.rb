require 'test_helper'

class ParsesControllerTest < ActionController::TestCase
  setup do
    @parse = parses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parse" do
    assert_difference('Parse.count') do
      post :create, parse: {  }
    end

    assert_redirected_to parse_path(assigns(:parse))
  end

  test "should show parse" do
    get :show, id: @parse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parse
    assert_response :success
  end

  test "should update parse" do
    patch :update, id: @parse, parse: {  }
    assert_redirected_to parse_path(assigns(:parse))
  end

  test "should destroy parse" do
    assert_difference('Parse.count', -1) do
      delete :destroy, id: @parse
    end

    assert_redirected_to parses_path
  end
end
