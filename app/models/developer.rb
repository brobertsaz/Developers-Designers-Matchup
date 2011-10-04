class Developer
  include Mongoid::Document
  field :name, :type => String
  field :description, :type => String
  field :services, :type => String
  field :website, :type => String
  
  validates_presence_of :name, :description, :services, :website
  validates_uniqueness_of :name
end
