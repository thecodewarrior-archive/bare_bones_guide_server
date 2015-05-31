json.array!(@guides) do |guide|
  json.extract! guide, :id, :guide_pack_version_id, :path, :title, :guide_image_id, :content, :manifest_version
  json.url guide_url(guide, format: :json)
end
