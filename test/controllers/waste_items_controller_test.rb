require 'test_helper'

class WasteItemsControllerTest < ActionController::TestCase
  setup do
    @waste_item = waste_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:waste_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create waste_item" do
    assert_difference('WasteItem.count') do
      post :create, waste_item: { content: @waste_item.content }
    end

    assert_redirected_to waste_item_path(assigns(:waste_item))
  end

  test "should show waste_item" do
    get :show, id: @waste_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @waste_item
    assert_response :success
  end

  test "should update waste_item" do
    patch :update, id: @waste_item, waste_item: { content: @waste_item.content }
    assert_redirected_to waste_item_path(assigns(:waste_item))
  end

  test "should destroy waste_item" do
    assert_difference('WasteItem.count', -1) do
      delete :destroy, id: @waste_item
    end

    assert_redirected_to waste_items_path
  end
end
