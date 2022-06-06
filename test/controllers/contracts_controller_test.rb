require "test_helper"

class ContractsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get contracts_new_url
    assert_response :success
  end

  test "should get create" do
    get contracts_create_url
    assert_response :success
  end

  test "should get update" do
    get contracts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get contracts_destroy_url
    assert_response :success
  end

  test "should get my_contracts" do
    get contracts_my_contracts_url
    assert_response :success
  end
end
