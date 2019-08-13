# == Schema Information
#
# Table name: reservations
#
#  id         :bigint           not null, primary key
#  rows       :string
#  columns    :integer
#  user_id    :integer
#  flight_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :flight
end
