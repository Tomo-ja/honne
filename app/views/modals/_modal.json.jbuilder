json.extract! modal, :id, :User, :name, :email, :password_digest, :remember_digest, :created_at, :updated_at
json.url modal_url(modal, format: :json)
