require 'test_helper'

class IdMapsControllerTest < ActionController::TestCase
  setup do
    @id_map = id_maps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:id_maps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create id_map" do
    assert_difference('IdMap.count') do
      post :create, id_map: { game_id: @id_map.game_id, guide_id: @id_map.guide_id, guide_pack_version_id: @id_map.guide_pack_version_id }
    end

    assert_redirected_to id_map_path(assigns(:id_map))
  end

  test "should show id_map" do
    get :show, id: @id_map
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @id_map
    assert_response :success
  end

  test "should update id_map" do
    patch :update, id: @id_map, id_map: { game_id: @id_map.game_id, guide_id: @id_map.guide_id, guide_pack_version_id: @id_map.guide_pack_version_id }
    assert_redirected_to id_map_path(assigns(:id_map))
  end

  test "should destroy id_map" do
    assert_difference('IdMap.count', -1) do
      delete :destroy, id: @id_map
    end

    assert_redirected_to id_maps_path
  end
end
