class Webmark < ActiveRecord::Base
  attr_accessible :date_saved, :name, :url
  
  validates :url, :length => { :minimum => 10 }
  validates :name, :length => { :maximum => 99 }
  validates :name, :length => { :minimum => 1 }
  
end
