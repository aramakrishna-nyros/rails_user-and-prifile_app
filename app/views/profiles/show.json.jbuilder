json.array!(@profiles) do |profile|
  json.extract! :user_id, :name, :gender, :dob, :profession, :mobile_no
  json.url profile_url(profile, format: :json)
end

