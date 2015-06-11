class Informed < ActiveRecord::Base
validates :user_id, :uniqueness => true

belongs_to :project
belongs_to :user

end
