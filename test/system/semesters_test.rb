require "application_system_test_case"

class SemestersTest < ApplicationSystemTestCase
  setup do
    @semester = semesters(:one)
  end

  test "visiting the index" do
    visit semesters_url
    assert_selector "h1", text: "Semesters"
  end

  test "creating a Semester" do
    visit semesters_url
    click_on "New Semester"

    fill_in "Credits", with: @semester.credits
    fill_in "End date", with: @semester.end_date
    fill_in "Name", with: @semester.name
    fill_in "Start date", with: @semester.start_date
    click_on "Create Semester"

    assert_text "Semester was successfully created"
    click_on "Back"
  end

  test "updating a Semester" do
    visit semesters_url
    click_on "Edit", match: :first

    fill_in "Credits", with: @semester.credits
    fill_in "End date", with: @semester.end_date
    fill_in "Name", with: @semester.name
    fill_in "Start date", with: @semester.start_date
    click_on "Update Semester"

    assert_text "Semester was successfully updated"
    click_on "Back"
  end

  test "destroying a Semester" do
    visit semesters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Semester was successfully destroyed"
  end
end
