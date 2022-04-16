class FlightsController < ApplicationController
  def index
    @flights = Flight.joins('INNER JOIN airports departure_airports
                             ON departure_airports.id = flights.departure_id
                             INNER JOIN airports destination_airports
                             ON destination_airports.id = flights.destination_id')

    @departures = @flights.distinct.pluck('departure_airports.airport_code', 'flights.departure_id')
    @destinations = @flights.distinct.pluck('destination_airports.airport_code', 'flights.destination_id')
    @flight_dates = @flights.order(:start_time).pluck('flights.start_time')
    @flight_dates = @flight_dates.map { |date| [format_flight_date(date)] }.uniq
  end

  private

  def format_flight_date(date)
    date.strftime('%d/%m/%Y')
  end
end
