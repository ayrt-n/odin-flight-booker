class FlightsController < ApplicationController
  def index
    @flights = Flight.all.order(:start_time)
    @flight_dates = @flights.pluck('flights.start_time')
    @flight_dates = @flight_dates.map { |date| [format_flight_date(date)] }.uniq

    @airports = Airport.all.map { |airport| [airport.airport_code, airport.id] }

    unless request.query_string.empty?
      @flight_results = @flights.flight_from(params[:departing_id]).flight_to(params[:destination_id]).on_date(params[:start_time])
    end
  end

  private

  def format_flight_date(date)
    date.strftime('%d/%m/%Y')
  end
end
