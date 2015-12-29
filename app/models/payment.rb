class Payment < ActiveRecord::Base
  belongs_to :item
end
