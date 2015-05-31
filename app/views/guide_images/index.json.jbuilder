json.array!(@guide_images) do |guide_image|
  json.extract! guide_image, :id, :guide_pack_version_id, :path, :title, :description, :manifest_version
  json.url guide_image_url(guide_image, format: :json)
end
