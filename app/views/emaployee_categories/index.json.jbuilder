json.array!(@emaployee_categories) do |emaployee_category|
  json.extract! emaployee_category, :id, :name
  json.url emaployee_category_url(emaployee_category, format: :json)
end
