json.array!(@guide_packs) do |guide_pack|
  json.extract! guide_pack, :id, :packid, :pretty_name, :description, :is_private
  json.url guide_pack_url(guide_pack, format: :json)
end
