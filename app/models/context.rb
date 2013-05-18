class Context < ActiveRecord::Base
  extend ActiveModel::Naming
  
  attr_accessible :name
end
