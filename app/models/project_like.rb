class ProjectLike < ActiveRecord::Base
validates :project_id, :uniqueness => { :scope => :user_id, :message => "has already been liked" }
belongs_to :user
belongs_to :project

end
