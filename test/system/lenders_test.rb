require "application_system_test_case"

class LendersTest < ApplicationSystemTestCase
  setup do
    @lender = lenders(:one)
  end

  test "visiting the index" do
    visit lenders_url
    assert_selector "h1", text: "Lenders"
  end

  test "should create lender" do
    visit lenders_url
    click_on "New lender"

    fill_in "First name", with: @lender.first_name
    fill_in "Last name", with: @lender.last_name
    fill_in "Number acount", with: @lender.number_acount
    click_on "Create Lender"

    assert_text "Lender was successfully created"
    click_on "Back"
  end

  test "should update Lender" do
    visit lender_url(@lender)
    click_on "Edit this lender", match: :first

    fill_in "First name", with: @lender.first_name
    fill_in "Last name", with: @lender.last_name
    fill_in "Number acount", with: @lender.number_acount
    click_on "Update Lender"

    assert_text "Lender was successfully updated"
    click_on "Back"
  end

  test "should destroy Lender" do
    visit lender_url(@lender)
    click_on "Destroy this lender", match: :first

    assert_text "Lender was successfully destroyed"
  end
end
