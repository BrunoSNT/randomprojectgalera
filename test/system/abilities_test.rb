require "application_system_test_case"

class AbilitiesTest < ApplicationSystemTestCase
  setup do
    @ability = abilities(:one)
  end

  test "visiting the index" do
    visit abilities_url
    assert_selector "h1", text: "Abilities"
  end

  test "creating a Ability" do
    visit abilities_url
    click_on "New Ability"

    fill_in "Cha bonus", with: @ability.cha_bonus
    fill_in "Character", with: @ability.character_id
    fill_in "Con bonus", with: @ability.con_bonus
    fill_in "Description", with: @ability.description
    fill_in "Dex bonus", with: @ability.dex_bonus
    fill_in "Int bonus", with: @ability.int_bonus
    fill_in "Name", with: @ability.name
    fill_in "Str bonus", with: @ability.str_bonus
    fill_in "Wis bonus", with: @ability.wis_bonus
    click_on "Create Ability"

    assert_text "Ability was successfully created"
    click_on "Back"
  end

  test "updating a Ability" do
    visit abilities_url
    click_on "Edit", match: :first

    fill_in "Cha bonus", with: @ability.cha_bonus
    fill_in "Character", with: @ability.character_id
    fill_in "Con bonus", with: @ability.con_bonus
    fill_in "Description", with: @ability.description
    fill_in "Dex bonus", with: @ability.dex_bonus
    fill_in "Int bonus", with: @ability.int_bonus
    fill_in "Name", with: @ability.name
    fill_in "Str bonus", with: @ability.str_bonus
    fill_in "Wis bonus", with: @ability.wis_bonus
    click_on "Update Ability"

    assert_text "Ability was successfully updated"
    click_on "Back"
  end

  test "destroying a Ability" do
    visit abilities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ability was successfully destroyed"
  end
end
