require 'test_helper'

class QualsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qual = quals(:one)
  end

  test "should get index" do
    get quals_url
    assert_response :success
  end

  test "should get new" do
    get new_qual_url
    assert_response :success
  end

  test "should create qual" do
    assert_difference('Qual.count') do
      post quals_url, params: { qual: { acquisition: @qual.acquisition, difficulty: @qual.difficulty, name: @qual.name, passrate: @qual.passrate } }
    end

    assert_redirected_to qual_url(Qual.last)
  end

  test "should show qual" do
    get qual_url(@qual)
    assert_response :success
  end

  test "should get edit" do
    get edit_qual_url(@qual)
    assert_response :success
  end

  test "should update qual" do
    patch qual_url(@qual), params: { qual: { acquisition: @qual.acquisition, difficulty: @qual.difficulty, name: @qual.name, passrate: @qual.passrate } }
    assert_redirected_to qual_url(@qual)
  end

  test "should destroy qual" do
    assert_difference('Qual.count', -1) do
      delete qual_url(@qual)
    end

    assert_redirected_to quals_url
  end
end
