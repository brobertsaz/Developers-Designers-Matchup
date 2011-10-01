class DesJob
  include Mongoid::Document
  field :title, :type => String
  field :description, :type => String
  field :requirements, :type => String
  field :responsibilities, :type => String
  
end