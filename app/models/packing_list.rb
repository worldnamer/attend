class PackingList < ActiveRecord::Base
  extend ActiveModel::Naming
  
  attr_accessible :name
  belongs_to :context
end
