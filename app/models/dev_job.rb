class DevJob
  include Mongoid::Document
  field :title, :type => String
  field :description, :type => String
  field :qualifications, :type => String
  field :preferred_skills, :type => String 
  
  validates_presence_of :title, :description, :qualifications, :preferred_skills
  validates_uniqueness_of :title
end
