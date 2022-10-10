require "test_helper"

class PriceAlertsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @price_alert = price_alerts(:one)
  end

  test "should get index" do
    get price_alerts_url
    assert_response :success
  end

  test "should get new" do
    get new_price_alert_url
    assert_response :success
  end

  test "should create price_alert" do
    assert_difference("PriceAlert.count") do
      post price_alerts_url, params: { price_alert: { selector: @price_alert.selector, trigger_amount: @price_alert.trigger_amount, url: @price_alert.url, user_id: @price_alert.user_id } }
    end

    assert_redirected_to price_alert_url(PriceAlert.last)
  end

  test "should show price_alert" do
    get price_alert_url(@price_alert)
    assert_response :success
  end

  test "should get edit" do
    get edit_price_alert_url(@price_alert)
    assert_response :success
  end

  test "should update price_alert" do
    patch price_alert_url(@price_alert), params: { price_alert: { selector: @price_alert.selector, trigger_amount: @price_alert.trigger_amount, url: @price_alert.url, user_id: @price_alert.user_id } }
    assert_redirected_to price_alert_url(@price_alert)
  end

  test "should destroy price_alert" do
    assert_difference("PriceAlert.count", -1) do
      delete price_alert_url(@price_alert)
    end

    assert_redirected_to price_alerts_url
  end
end
