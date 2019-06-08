require "application_system_test_case"

class AlignmentsTest < ApplicationSystemTestCase
  setup do
    @alignment = alignments(:one)
  end

  test "visiting the index" do
    visit alignments_url
    assert_selector "h1", text: "Alignments"
  end

  test "creating a Alignment" do
    visit alignments_url
    click_on "New Alignment"

    fill_in "Description", with: @alignment.description
    fill_in "Name", with: @alignment.name
    click_on "Create Alignment"

    assert_text "Alignment was successfully created"
    click_on "Back"
  end

  test "updating a Alignment" do
    visit alignments_url
    click_on "Edit", match: :first

    fill_in "Description", with: @alignment.description
    fill_in "Name", with: @alignment.name
    click_on "Update Alignment"

    assert_text "Alignment was successfully updated"
    click_on "Back"
  end

  test "destroying a Alignment" do
    visit alignments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alignment was successfully destroyed"
  end
end
