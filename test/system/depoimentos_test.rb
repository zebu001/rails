require "application_system_test_case"

class DepoimentosTest < ApplicationSystemTestCase
  setup do
    @depoimento = depoimentos(:one)
  end

  test "visiting the index" do
    visit depoimentos_url
    assert_selector "h1", text: "Depoimentos"
  end

  test "should create depoimento" do
    visit depoimentos_url
    click_on "New depoimento"

    fill_in "Descricao", with: @depoimento.descricao
    click_on "Create Depoimento"

    assert_text "Depoimento was successfully created"
    click_on "Back"
  end

  test "should update Depoimento" do
    visit depoimento_url(@depoimento)
    click_on "Edit this depoimento", match: :first

    fill_in "Descricao", with: @depoimento.descricao
    click_on "Update Depoimento"

    assert_text "Depoimento was successfully updated"
    click_on "Back"
  end

  test "should destroy Depoimento" do
    visit depoimento_url(@depoimento)
    click_on "Destroy this depoimento", match: :first

    assert_text "Depoimento was successfully destroyed"
  end
end
