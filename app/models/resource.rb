class Resource < ActiveRecord::Base

validates :user_id, :uniqueness => true
validates :resource_question, :presence => true

belongs_to :project
belongs_to :user
end
