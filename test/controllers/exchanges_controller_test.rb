require 'test_helper'

class ExchangesControllerTest < ActionController::TestCase
  setup do
    @exchange = exchanges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exchanges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exchange" do
    assert_difference('Exchange.count') do
      post :create, exchange: { alcohol_whipes: @exchange.alcohol_whipes, ascorbic_acid: @exchange.ascorbic_acid, bleach: @exchange.bleach, blues: @exchange.blues, condoms: @exchange.condoms, cookers: @exchange.cookers, cottons: @exchange.cottons, halfs: @exchange.halfs, narcan: @exchange.narcan, one_qt: @exchange.one_qt, pieces_of_lit: @exchange.pieces_of_lit, pogos: @exchange.pogos, returned_needles: @exchange.returned_needles, secondary_exchange: @exchange.secondary_exchange, three_gal: @exchange.three_gal, ties: @exchange.ties, two_qt: @exchange.two_qt, ultrafines: @exchange.ultrafines, user_id: @exchange.user_id, visit_id: @exchange.visit_id }
    end

    assert_redirected_to exchange_path(assigns(:exchange))
  end

  test "should show exchange" do
    get :show, id: @exchange
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exchange
    assert_response :success
  end

  test "should update exchange" do
    patch :update, id: @exchange, exchange: { alcohol_whipes: @exchange.alcohol_whipes, ascorbic_acid: @exchange.ascorbic_acid, bleach: @exchange.bleach, blues: @exchange.blues, condoms: @exchange.condoms, cookers: @exchange.cookers, cottons: @exchange.cottons, halfs: @exchange.halfs, narcan: @exchange.narcan, one_qt: @exchange.one_qt, pieces_of_lit: @exchange.pieces_of_lit, pogos: @exchange.pogos, returned_needles: @exchange.returned_needles, secondary_exchange: @exchange.secondary_exchange, three_gal: @exchange.three_gal, ties: @exchange.ties, two_qt: @exchange.two_qt, ultrafines: @exchange.ultrafines, user_id: @exchange.user_id, visit_id: @exchange.visit_id }
    assert_redirected_to exchange_path(assigns(:exchange))
  end

  test "should destroy exchange" do
    assert_difference('Exchange.count', -1) do
      delete :destroy, id: @exchange
    end

    assert_redirected_to exchanges_path
  end
end
