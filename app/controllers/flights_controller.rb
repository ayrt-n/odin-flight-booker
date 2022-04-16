class FlightsController < ApplicationController
  def index
    @departing_airports = Airport.joins(:departing_flights).distinct
    @departing_airports = @departing_airports.map { |da| [da.airport_code, da.id] }

    @arrival_airports = Airport.joins(:arriving_flights).distinct
    @arrival_airports = @arrival_airports.map { |aa| [aa.airport_code, aa.id] }

    @flight_dates = Flight.all.order(:start_time)
    @flight_dates = @flight_dates.map { |f| [format_flight_date(f.start_time)] }.uniq
  end

  private

  def format_flight_date(date)
    date.strftime('%d/%m/%Y')
  end
end
