json.extract! defect, :id, :title, :articles, :issue_type, :priority, :status, :created_at, :updated_at
json.url defect_url(defect, format: :json)
