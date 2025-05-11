json.extract! course, :id, :name, :location, :par, :created_at, :updated_at
json.url course_url(course, format: :json)
