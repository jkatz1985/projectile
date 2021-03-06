class Project < ActiveRecord::Base

validates :project_name, :presence => true,:uniqueness => { :scope => :user_id }
validates :description, :presence => true
validates :customer_pain, :presence => true
validates :status, :presence => true



has_many :likes , :class_name => "Project Like", :foreign_key => "project_id"
has_many :comments
has_many :informeds
has_many :resources
belongs_to :user
has_many :liked_by, :through => :likes , :source => :user


end
