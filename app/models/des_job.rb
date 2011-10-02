class DesJob
  include Mongoid::Document
  field :title, :type => String
  field :description, :type => String
  field :requirements, :type => String
  field :responsibilities, :type => String
  
  validates_presence_of :title, :description, :requirements, :responsibilities
  validates_uniqueness_of :title
end