require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get acesso_do_pesquisador" do
    get :acesso_do_pesquisador
    assert_response :success
  end

  test "should get fundacao" do
    get :fundacao
    assert_response :success
  end

  test "should get eventos" do
    get :eventos
    assert_response :success
  end

  test "should get portal_de_transparencia" do
    get :portal_de_transparencia
    assert_response :success
  end

  test "should get publicacoes" do
    get :publicacoes
    assert_response :success
  end

  test "should get setores" do
    get :setores
    assert_response :success
  end

  test "should get conveniar" do
    get :conveniar
    assert_response :success
  end

  test "should get juridico" do
    get :juridico
    assert_response :success
  end

  test "should get editais" do
    get :editais
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get imprensa" do
    get :imprensa
    assert_response :success
  end

  test "should get financiar" do
    get :financiar
    assert_response :success
  end

  test "should get faq" do
    get :faq
    assert_response :success
  end

  test "should get mapa_do_site" do
    get :mapa_do_site
    assert_response :success
  end

  test "should get parceiros" do
    get :parceiros
    assert_response :success
  end

  test "should get sobre" do
    get :sobre
    assert_response :success
  end

  test "should get oportunidades" do
    get :oportunidades
    assert_response :success
  end

end
