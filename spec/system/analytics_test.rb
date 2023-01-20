require "application_system_test_case"

class AnalyticsTest < ApplicationSystemTestCase
  setup do
    @analytic = analytics(:one)
  end

  test "visiting the index" do
    visit analytics_url
    assert_selector "h1", text: "Analytics"
  end

  test "should create analytic" do
    visit analytics_url
    click_on "New analytic"

    fill_in "Event", with: @analytic.event
    check "Valid" if @analytic.valid
    click_on "Create Analytic"

    assert_text "Analytic was successfully created"
    click_on "Back"
  end

  test "should update Analytic" do
    visit analytic_url(@analytic)
    click_on "Edit this analytic", match: :first

    fill_in "Event", with: @analytic.event
    check "Valid" if @analytic.valid
    click_on "Update Analytic"

    assert_text "Analytic was successfully updated"
    click_on "Back"
  end

  test "should destroy Analytic" do
    visit analytic_url(@analytic)
    click_on "Destroy this analytic", match: :first

    assert_text "Analytic was successfully destroyed"
  end
end
