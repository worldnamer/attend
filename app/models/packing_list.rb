class PackingList < ActiveRecord::Base
  extend ActiveModel::Naming

  belongs_to :context
  
  attr_accessible :name
  has_many :packables
end
