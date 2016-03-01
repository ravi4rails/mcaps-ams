require 'test_helper'

class EmaployeeCategoriesControllerTest < ActionController::TestCase
  setup do
    @emaployee_category = emaployee_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emaployee_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emaployee_category" do
    assert_difference('EmaployeeCategory.count') do
      post :create, emaployee_category: { name: @emaployee_category.name }
    end

    assert_redirected_to emaployee_category_path(assigns(:emaployee_category))
  end

  test "should show emaployee_category" do
    get :show, id: @emaployee_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emaployee_category
    assert_response :success
  end

  test "should update emaployee_category" do
    patch :update, id: @emaployee_category, emaployee_category: { name: @emaployee_category.name }
    assert_redirected_to emaployee_category_path(assigns(:emaployee_category))
  end

  test "should destroy emaployee_category" do
    assert_difference('EmaployeeCategory.count', -1) do
      delete :destroy, id: @emaployee_category
    end

    assert_redirected_to emaployee_categories_path
  end
end
