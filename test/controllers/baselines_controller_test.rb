require 'test_helper'

class BaselinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @baseline = baselines(:one)
  end

  test "should get index" do
    get baselines_url
    assert_response :success
  end

  test "should get new" do
    get new_baseline_url
    assert_response :success
  end

  test "should create baseline" do
    assert_difference('Baseline.count') do
      post baselines_url, params: { baseline: { name: @baseline.name, product_id: @baseline.product_id } }
    end

    assert_redirected_to baseline_url(Baseline.last)
  end

  test "should show baseline" do
    get baseline_url(@baseline)
    assert_response :success
  end

  test "should get edit" do
    get edit_baseline_url(@baseline)
    assert_response :success
  end

  test "should update baseline" do
    patch baseline_url(@baseline), params: { baseline: { name: @baseline.name, product_id: @baseline.product_id } }
    assert_redirected_to baseline_url(@baseline)
  end

  test "should destroy baseline" do
    assert_difference('Baseline.count', -1) do
      delete baseline_url(@baseline)
    end

    assert_redirected_to baselines_url
  end
end
