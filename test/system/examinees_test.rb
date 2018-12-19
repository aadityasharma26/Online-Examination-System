require "application_system_test_case"

class ExamineesTest < ApplicationSystemTestCase
  setup do
    @examinee = examinees(:one)
  end

  test "visiting the index" do
    visit examinees_url
    assert_selector "h1", text: "Examinees"
  end

  test "creating a Examinee" do
    visit examinees_url
    click_on "New Examinee"

    click_on "Create Examinee"

    assert_text "Examinee was successfully created"
    click_on "Back"
  end

  test "updating a Examinee" do
    visit examinees_url
    click_on "Edit", match: :first

    click_on "Update Examinee"

    assert_text "Examinee was successfully updated"
    click_on "Back"
  end

  test "destroying a Examinee" do
    visit examinees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Examinee was successfully destroyed"
  end
end
