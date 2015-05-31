require 'test_helper'

class GuidePacksControllerTest < ActionController::TestCase
  setup do
    @guide_pack = guide_packs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guide_packs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guide_pack" do
    assert_difference('GuidePack.count') do
      post :create, guide_pack: { description: @guide_pack.description, is_private: @guide_pack.is_private, packid: @guide_pack.packid, pretty_name: @guide_pack.pretty_name }
    end

    assert_redirected_to guide_pack_path(assigns(:guide_pack))
  end

  test "should show guide_pack" do
    get :show, id: @guide_pack
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guide_pack
    assert_response :success
  end

  test "should update guide_pack" do
    patch :update, id: @guide_pack, guide_pack: { description: @guide_pack.description, is_private: @guide_pack.is_private, packid: @guide_pack.packid, pretty_name: @guide_pack.pretty_name }
    assert_redirected_to guide_pack_path(assigns(:guide_pack))
  end

  test "should destroy guide_pack" do
    assert_difference('GuidePack.count', -1) do
      delete :destroy, id: @guide_pack
    end

    assert_redirected_to guide_packs_path
  end
end
