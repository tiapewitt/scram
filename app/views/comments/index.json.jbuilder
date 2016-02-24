json.array!(@comments) do |comment|
  json.extract! comment, :id, :comment_entry, :user_id, :submission_id
  json.url comment_url(comment, format: :json)
end
