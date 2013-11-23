require 'test_helper'

class PortfolioCountersControllerTest < ActionController::TestCase
  setup do
    @portfolio_counter = portfolio_counters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:portfolio_counters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create portfolio_counter" do
    assert_difference('PortfolioCounter.count') do
      post :create, portfolio_counter: { cid: @portfolio_counter.cid, pid: @portfolio_counter.pid, price: @portfolio_counter.price, purchasedate: @portfolio_counter.purchasedate, size: @portfolio_counter.size }
    end

    assert_redirected_to portfolio_counter_path(assigns(:portfolio_counter))
  end

  test "should show portfolio_counter" do
    get :show, id: @portfolio_counter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @portfolio_counter
    assert_response :success
  end

  test "should update portfolio_counter" do
    patch :update, id: @portfolio_counter, portfolio_counter: { cid: @portfolio_counter.cid, pid: @portfolio_counter.pid, price: @portfolio_counter.price, purchasedate: @portfolio_counter.purchasedate, size: @portfolio_counter.size }
    assert_redirected_to portfolio_counter_path(assigns(:portfolio_counter))
  end

  test "should destroy portfolio_counter" do
    assert_difference('PortfolioCounter.count', -1) do
      delete :destroy, id: @portfolio_counter
    end

    assert_redirected_to portfolio_counters_path
  end
end
