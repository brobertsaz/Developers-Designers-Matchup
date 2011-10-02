class DevJob
  include Mongoid::Document
  field :title, :type => String
  field :description, :type => String
  field :qualifications, :type => String
  field :preferred_skills, :type => String 
end
