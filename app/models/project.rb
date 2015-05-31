class Project < ActiveRecord::Base

has_many :likes , :class_name => "Project Like", :foreign_key => "project_id"
has_many :comments
has_many :informed
has_many :resources
belongs_to :user
has_many :liked_by, :through => :likes , :source => :user


end
