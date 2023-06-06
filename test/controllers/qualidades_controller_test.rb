require "test_helper"

class QualidadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qualidade = qualidades(:one)
  end

  test "should get index" do
    get qualidades_url
    assert_response :success
  end

  test "should get new" do
    get new_qualidade_url
    assert_response :success
  end

  test "should create qualidade" do
    assert_difference("Qualidade.count") do
      post qualidades_url, params: { qualidade: { descricao: @qualidade.descricao } }
    end

    assert_redirected_to qualidade_url(Qualidade.last)
  end

  test "should show qualidade" do
    get qualidade_url(@qualidade)
    assert_response :success
  end

  test "should get edit" do
    get edit_qualidade_url(@qualidade)
    assert_response :success
  end

  test "should update qualidade" do
    patch qualidade_url(@qualidade), params: { qualidade: { descricao: @qualidade.descricao } }
    assert_redirected_to qualidade_url(@qualidade)
  end

  test "should destroy qualidade" do
    assert_difference("Qualidade.count", -1) do
      delete qualidade_url(@qualidade)
    end

    assert_redirected_to qualidades_url
  end
end
