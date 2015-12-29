# == Schema Information
#
# Table name: payments
#
#  id         :integer          not null, primary key
#  item_id    :integer
#  price      :integer
#  amount     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Payment < ActiveRecord::Base
  belongs_to :item
  belongs_to :user
end
