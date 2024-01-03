require "application_system_test_case"

class ScadulesTest < ApplicationSystemTestCase
  setup do
    @scadule = scadules(:one)
  end

  test "visiting the index" do
    visit scadules_url
    assert_selector "h1", text: "Scadules"
  end

  test "should create scadule" do
    visit scadules_url
    click_on "New scadule"

    fill_in "Description", with: @scadule.description
    fill_in "End time", with: @scadule.end_time
    fill_in "Start time", with: @scadule.start_time
    fill_in "Title", with: @scadule.title
    click_on "Create Scadule"

    assert_text "Scadule was successfully created"
    click_on "Back"
  end

  test "should update Scadule" do
    visit scadule_url(@scadule)
    click_on "Edit this scadule", match: :first

    fill_in "Description", with: @scadule.description
    fill_in "End time", with: @scadule.end_time
    fill_in "Start time", with: @scadule.start_time
    fill_in "Title", with: @scadule.title
    click_on "Update Scadule"

    assert_text "Scadule was successfully updated"
    click_on "Back"
  end

  test "should destroy Scadule" do
    visit scadule_url(@scadule)
    click_on "Destroy this scadule", match: :first

    assert_text "Scadule was successfully destroyed"
  end
end
