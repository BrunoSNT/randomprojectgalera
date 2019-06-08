require "application_system_test_case"

class CharactersTest < ApplicationSystemTestCase
  setup do
    @character = characters(:one)
  end

  test "visiting the index" do
    visit characters_url
    assert_selector "h1", text: "Characters"
  end

  test "creating a Character" do
    visit characters_url
    click_on "New Character"

    fill_in "Alignment", with: @character.alignment_id
    fill_in "Armor class", with: @character.armor_class
    fill_in "Background", with: @character.background
    fill_in "Char name", with: @character.char_name
    fill_in "Charisma", with: @character.charisma
    fill_in "Constitution", with: @character.constitution
    fill_in "Dexterity", with: @character.dexterity
    fill_in "Experience", with: @character.experience
    fill_in "Faction", with: @character.faction_id
    fill_in "Hit points", with: @character.hit_points
    fill_in "Initiative", with: @character.initiative
    fill_in "Intelligence", with: @character.intelligence
    fill_in "Name", with: @character.name
    fill_in "Profession", with: @character.profession_id
    fill_in "Strength", with: @character.strength
    fill_in "Wisdom", with: @character.wisdom
    click_on "Create Character"

    assert_text "Character was successfully created"
    click_on "Back"
  end

  test "updating a Character" do
    visit characters_url
    click_on "Edit", match: :first

    fill_in "Alignment", with: @character.alignment_id
    fill_in "Armor class", with: @character.armor_class
    fill_in "Background", with: @character.background
    fill_in "Char name", with: @character.char_name
    fill_in "Charisma", with: @character.charisma
    fill_in "Constitution", with: @character.constitution
    fill_in "Dexterity", with: @character.dexterity
    fill_in "Experience", with: @character.experience
    fill_in "Faction", with: @character.faction_id
    fill_in "Hit points", with: @character.hit_points
    fill_in "Initiative", with: @character.initiative
    fill_in "Intelligence", with: @character.intelligence
    fill_in "Name", with: @character.name
    fill_in "Profession", with: @character.profession_id
    fill_in "Strength", with: @character.strength
    fill_in "Wisdom", with: @character.wisdom
    click_on "Update Character"

    assert_text "Character was successfully updated"
    click_on "Back"
  end

  test "destroying a Character" do
    visit characters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Character was successfully destroyed"
  end
end
