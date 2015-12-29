# == Schema Information
#
# Table name: shipments
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  item_id    :integer
#  amount     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Shipment < ActiveRecord::Base
  belongs_to :user
  belongs_to :item
end
