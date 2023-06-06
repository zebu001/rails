require "application_system_test_case"

class QualidadesTest < ApplicationSystemTestCase
  setup do
    @qualidade = qualidades(:one)
  end

  test "visiting the index" do
    visit qualidades_url
    assert_selector "h1", text: "Qualidades"
  end

  test "should create qualidade" do
    visit qualidades_url
    click_on "New qualidade"

    fill_in "Descricao", with: @qualidade.descricao
    click_on "Create Qualidade"

    assert_text "Qualidade was successfully created"
    click_on "Back"
  end

  test "should update Qualidade" do
    visit qualidade_url(@qualidade)
    click_on "Edit this qualidade", match: :first

    fill_in "Descricao", with: @qualidade.descricao
    click_on "Update Qualidade"

    assert_text "Qualidade was successfully updated"
    click_on "Back"
  end

  test "should destroy Qualidade" do
    visit qualidade_url(@qualidade)
    click_on "Destroy this qualidade", match: :first

    assert_text "Qualidade was successfully destroyed"
  end
end
