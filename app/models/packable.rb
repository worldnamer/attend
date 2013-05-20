class Packable < ActiveRecord::Base
  belongs_to :packing_list
  
  attr_accessible :name
end
