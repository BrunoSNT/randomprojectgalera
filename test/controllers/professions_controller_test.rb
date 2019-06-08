require 'test_helper'

class ProfessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profession = professions(:one)
  end

  test "should get index" do
    get professions_url
    assert_response :success
  end

  test "should get new" do
    get new_profession_url
    assert_response :success
  end

  test "should create profession" do
    assert_difference('Profession.count') do
      post professions_url, params: { profession: { cha_bonus: @profession.cha_bonus, con_bonus: @profession.con_bonus, dex_bonus: @profession.dex_bonus, int_bonus: @profession.int_bonus, name: @profession.name, str_bonus: @profession.str_bonus, wis_bonus: @profession.wis_bonus } }
    end

    assert_redirected_to profession_url(Profession.last)
  end

  test "should show profession" do
    get profession_url(@profession)
    assert_response :success
  end

  test "should get edit" do
    get edit_profession_url(@profession)
    assert_response :success
  end

  test "should update profession" do
    patch profession_url(@profession), params: { profession: { cha_bonus: @profession.cha_bonus, con_bonus: @profession.con_bonus, dex_bonus: @profession.dex_bonus, int_bonus: @profession.int_bonus, name: @profession.name, str_bonus: @profession.str_bonus, wis_bonus: @profession.wis_bonus } }
    assert_redirected_to profession_url(@profession)
  end

  test "should destroy profession" do
    assert_difference('Profession.count', -1) do
      delete profession_url(@profession)
    end

    assert_redirected_to professions_url
  end
end
