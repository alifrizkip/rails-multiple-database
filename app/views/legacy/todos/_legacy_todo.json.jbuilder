json.extract! legacy_todo, :id, :name, :detail, :is_done, :created_at, :updated_at
json.url legacy_todo_url(legacy_todo, format: :json)
