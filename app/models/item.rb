class Item < ActiveRecord::Base
  attr_accessible :item
  belongs_to :itemz, :polymorphic => true
end
