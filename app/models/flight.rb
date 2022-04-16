class Flight < ApplicationRecord
  scope :flight_from, ->(id) { where('departure_id = ?', id) }
  scope :flight_to, ->(id) { where('destination_id = ?', id) }
  scope :on_date, ->(date) { where(start_time: date.to_date.beginning_of_day..date.to_date.end_of_day) }

  belongs_to :departure, class_name: 'Airport'
  belongs_to :destination, class_name: 'Airport'
end
