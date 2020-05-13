require 'test_helper'

class MemHonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mem_hon = mem_hons(:one)
  end

  test "should get index" do
    get mem_hons_url
    assert_response :success
  end

  test "should get new" do
    get new_mem_hon_url
    assert_response :success
  end

  test "should create mem_hon" do
    assert_difference('MemHon.count') do
      post mem_hons_url, params: { mem_hon: {  } }
    end

    assert_redirected_to mem_hon_url(MemHon.last)
  end

  test "should show mem_hon" do
    get mem_hon_url(@mem_hon)
    assert_response :success
  end

  test "should get edit" do
    get edit_mem_hon_url(@mem_hon)
    assert_response :success
  end

  test "should update mem_hon" do
    patch mem_hon_url(@mem_hon), params: { mem_hon: {  } }
    assert_redirected_to mem_hon_url(@mem_hon)
  end

  test "should destroy mem_hon" do
    assert_difference('MemHon.count', -1) do
      delete mem_hon_url(@mem_hon)
    end

    assert_redirected_to mem_hons_url
  end
end
