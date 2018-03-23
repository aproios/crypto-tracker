require 'test_helper'

class CryptosTrackersControllerTest < ActionController::TestCase
  setup do
    @cryptos_tracker = cryptos_trackers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cryptos_trackers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cryptos_tracker" do
    assert_difference('CryptosTracker.count') do
      post :create, cryptos_tracker: { amount_owned: @cryptos_tracker.amount_owned, cost_per: @cryptos_tracker.cost_per, symbol: @cryptos_tracker.symbol, user_id: @cryptos_tracker.user_id }
    end

    assert_redirected_to cryptos_tracker_path(assigns(:cryptos_tracker))
  end

  test "should show cryptos_tracker" do
    get :show, id: @cryptos_tracker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cryptos_tracker
    assert_response :success
  end

  test "should update cryptos_tracker" do
    patch :update, id: @cryptos_tracker, cryptos_tracker: { amount_owned: @cryptos_tracker.amount_owned, cost_per: @cryptos_tracker.cost_per, symbol: @cryptos_tracker.symbol, user_id: @cryptos_tracker.user_id }
    assert_redirected_to cryptos_tracker_path(assigns(:cryptos_tracker))
  end

  test "should destroy cryptos_tracker" do
    assert_difference('CryptosTracker.count', -1) do
      delete :destroy, id: @cryptos_tracker
    end

    assert_redirected_to cryptos_trackers_path
  end
end
