json.extract! member, :id, :first_name, :last_name, :document_number, :birth_date, :phone_number, :email, :created_at, :updated_at
json.url member_url(member, format: :json)
