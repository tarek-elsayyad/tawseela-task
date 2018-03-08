class Api::V1::TripCheckPointsController < ApplicationController
  before_action :set_trip_check_point, only: [:show]
  before_action :set_trip
  

  # GET /trips/1/trip_check_points
  # GET /trips/1/trip_check_points.json
  def index
    @trip_check_points = @trip.trip_check_points.includes(:user)
  end

  # GET /trips/1/trip_check_points/1
  # GET /trips/1/trip_check_points/1.json
  def show
  end

  # POST /trips/1/trip_check_points
  # POST /trips/1/trip_check_points.json
  def create
    @trip_check_point = @trip.trip_check_points.build(trip_check_point_params)
    if @trip_check_point.save
      render :show, status: :created
    else
      render json: @trip_check_point.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trips/1/trip_check_points/1
  # PATCH/PUT /trips/1/trip_check_points/1.json
  # def update
  #   if @trip_check_point.update(trip_check_point_params)
  #     render :show, status: :ok
  #   else
  #     render json: @trip_check_point.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /trips/1/trip_check_points/1
  # DELETE /trips/1/trip_check_points/1.json
  # def destroy
  #   @trip_check_point.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip_check_point
      @trip_check_point = TripCheckPoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_check_point_params
      params.require(:trip_check_point).permit(:trip_id, :speed, :latitude, :longitude, :user_id)
    end

    def set_trip
      @trip = Trip.find(params[:trip_id])
    end
end
