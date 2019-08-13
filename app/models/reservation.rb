# == Schema Information
#
# Table name: reservations
#
#  id         :bigint           not null, primary key
#  rows       :integer
#  columns    :integer
#  user_id    :integer
#  flight_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Reservation < ApplicationRecord
  belong_to :user
  belong_to :flight
end
