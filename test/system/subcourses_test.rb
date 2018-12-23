require "application_system_test_case"

class SubcoursesTest < ApplicationSystemTestCase
  setup do
    @subcourse = subcourses(:one)
  end

  test "visiting the index" do
    visit subcourses_url
    assert_selector "h1", text: "Subcourses"
  end

  test "creating a Subcourse" do
    visit subcourses_url
    click_on "New Subcourse"

    click_on "Create Subcourse"

    assert_text "Subcourse was successfully created"
    click_on "Back"
  end

  test "updating a Subcourse" do
    visit subcourses_url
    click_on "Edit", match: :first

    click_on "Update Subcourse"

    assert_text "Subcourse was successfully updated"
    click_on "Back"
  end

  test "destroying a Subcourse" do
    visit subcourses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subcourse was successfully destroyed"
  end
end
