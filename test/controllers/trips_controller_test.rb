require 'test_helper'

class TripsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip = trips(:one)
  end

  test "should get index" do
    get trips_url, as: :json
    assert_response :success
  end

  test "should create trip" do
    assert_difference('Trip.count') do
      post trips_url, params: { trip: { current_status: @trip.current_status, ended_time: @trip.ended_time, estimated_arrival_time: @trip.estimated_arrival_time, starting_address: @trip.starting_address, starting_latitude: @trip.starting_latitude, starting_longitude: @trip.starting_longitude, starting_time: @trip.starting_time, users: @trip.users } }, as: :json
    end

    assert_response 201
  end

  test "should show trip" do
    get trip_url(@trip), as: :json
    assert_response :success
  end

  test "should update trip" do
    patch trip_url(@trip), params: { trip: { current_status: @trip.current_status, ended_time: @trip.ended_time, estimated_arrival_time: @trip.estimated_arrival_time, starting_address: @trip.starting_address, starting_latitude: @trip.starting_latitude, starting_longitude: @trip.starting_longitude, starting_time: @trip.starting_time, users: @trip.users } }, as: :json
    assert_response 200
  end

  test "should destroy trip" do
    assert_difference('Trip.count', -1) do
      delete trip_url(@trip), as: :json
    end

    assert_response 204
  end
end
