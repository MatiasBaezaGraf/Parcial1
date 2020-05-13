require "application_system_test_case"

class MemHonsTest < ApplicationSystemTestCase
  setup do
    @mem_hon = mem_hons(:one)
  end

  test "visiting the index" do
    visit mem_hons_url
    assert_selector "h1", text: "Mem Hons"
  end

  test "creating a Mem hon" do
    visit mem_hons_url
    click_on "New Mem Hon"

    click_on "Create Mem hon"

    assert_text "Mem hon was successfully created"
    click_on "Back"
  end

  test "updating a Mem hon" do
    visit mem_hons_url
    click_on "Edit", match: :first

    click_on "Update Mem hon"

    assert_text "Mem hon was successfully updated"
    click_on "Back"
  end

  test "destroying a Mem hon" do
    visit mem_hons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mem hon was successfully destroyed"
  end
end
