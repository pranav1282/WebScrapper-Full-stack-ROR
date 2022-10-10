require "application_system_test_case"

class PriceAlertsTest < ApplicationSystemTestCase
  setup do
    @price_alert = price_alerts(:one)
  end

  test "visiting the index" do
    visit price_alerts_url
    assert_selector "h1", text: "Price alerts"
  end

  test "should create price alert" do
    visit price_alerts_url
    click_on "New price alert"

    fill_in "Selector", with: @price_alert.selector
    fill_in "Trigger amount", with: @price_alert.trigger_amount
    fill_in "Url", with: @price_alert.url
    fill_in "User", with: @price_alert.user_id
    click_on "Create Price alert"

    assert_text "Price alert was successfully created"
    click_on "Back"
  end

  test "should update Price alert" do
    visit price_alert_url(@price_alert)
    click_on "Edit this price alert", match: :first

    fill_in "Selector", with: @price_alert.selector
    fill_in "Trigger amount", with: @price_alert.trigger_amount
    fill_in "Url", with: @price_alert.url
    fill_in "User", with: @price_alert.user_id
    click_on "Update Price alert"

    assert_text "Price alert was successfully updated"
    click_on "Back"
  end

  test "should destroy Price alert" do
    visit price_alert_url(@price_alert)
    click_on "Destroy this price alert", match: :first

    assert_text "Price alert was successfully destroyed"
  end
end
