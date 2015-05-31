require 'test_helper'

class GuideImagesControllerTest < ActionController::TestCase
  setup do
    @guide_image = guide_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guide_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guide_image" do
    assert_difference('GuideImage.count') do
      post :create, guide_image: { description: @guide_image.description, guide_pack_version_id: @guide_image.guide_pack_version_id, manifest_version: @guide_image.manifest_version, path: @guide_image.path, title: @guide_image.title }
    end

    assert_redirected_to guide_image_path(assigns(:guide_image))
  end

  test "should show guide_image" do
    get :show, id: @guide_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guide_image
    assert_response :success
  end

  test "should update guide_image" do
    patch :update, id: @guide_image, guide_image: { description: @guide_image.description, guide_pack_version_id: @guide_image.guide_pack_version_id, manifest_version: @guide_image.manifest_version, path: @guide_image.path, title: @guide_image.title }
    assert_redirected_to guide_image_path(assigns(:guide_image))
  end

  test "should destroy guide_image" do
    assert_difference('GuideImage.count', -1) do
      delete :destroy, id: @guide_image
    end

    assert_redirected_to guide_images_path
  end
end
