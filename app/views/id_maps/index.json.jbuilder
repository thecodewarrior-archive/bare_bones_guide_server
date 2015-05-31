json.array!(@id_maps) do |id_map|
  json.extract! id_map, :id, :guide_pack_version_id, :guide_id, :game_id
  json.url id_map_url(id_map, format: :json)
end
