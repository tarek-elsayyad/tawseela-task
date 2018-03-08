require 'test_helper'

class TripCheckPointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip_check_point = trip_check_points(:one)
  end

  test "should get index" do
    get trip_check_points_url, as: :json
    assert_response :success
  end

  test "should create trip_check_point" do
    assert_difference('TripCheckPoint.count') do
      post trip_check_points_url, params: { trip_check_point: { latitude: @trip_check_point.latitude, longitude: @trip_check_point.longitude, speed: @trip_check_point.speed, trip: @trip_check_point.trip, user: @trip_check_point.user } }, as: :json
    end

    assert_response 201
  end

  test "should show trip_check_point" do
    get trip_check_point_url(@trip_check_point), as: :json
    assert_response :success
  end

  test "should update trip_check_point" do
    patch trip_check_point_url(@trip_check_point), params: { trip_check_point: { latitude: @trip_check_point.latitude, longitude: @trip_check_point.longitude, speed: @trip_check_point.speed, trip: @trip_check_point.trip, user: @trip_check_point.user } }, as: :json
    assert_response 200
  end

  test "should destroy trip_check_point" do
    assert_difference('TripCheckPoint.count', -1) do
      delete trip_check_point_url(@trip_check_point), as: :json
    end

    assert_response 204
  end
end
