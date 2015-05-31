class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


has_many :projects_liked , :class_name => "Project Like", :foreign_key => "user_id"
has_many :projects
has_many :informed_on , :class_name => "Informed", :foreign_key => "user_id"
has_many :resource_on , :class_name => "Resource", :foreign_key => "user_id"
has_many :informed_projects, :through => :informed_on , :source => :project
has_many :resourced_projects, :through => :resource_on , :source => :project

end
