json.array!(@submissions) do |submission|
  json.extract! submission, :id, :title, :my_story, :user_id
  json.url submission_url(submission, format: :json)
end
