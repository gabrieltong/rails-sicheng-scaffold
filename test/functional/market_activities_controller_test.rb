require 'test_helper'

class MarketActivitiesControllerTest < ActionController::TestCase
  setup do
    @market_activity = market_activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:market_activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create market_activity" do
    assert_difference('MarketActivity.count') do
      post :create, market_activity: { title: @market_activity.title }
    end

    assert_redirected_to market_activity_path(assigns(:market_activity))
  end

  test "should show market_activity" do
    get :show, id: @market_activity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @market_activity
    assert_response :success
  end

  test "should update market_activity" do
    put :update, id: @market_activity, market_activity: { title: @market_activity.title }
    assert_redirected_to market_activity_path(assigns(:market_activity))
  end

  test "should destroy market_activity" do
    assert_difference('MarketActivity.count', -1) do
      delete :destroy, id: @market_activity
    end

    assert_redirected_to market_activities_path
  end
end
