class Context < ActiveRecord::Base
  extend ActiveModel::Naming
  
  attr_accessible :name
  has_many :packing_lists
end
