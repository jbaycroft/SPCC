class Client < ActiveRecord::Base
  has_many :storages, :dependent => :destroy
  attr_accessible :description, :location, :name
end
