require 'test_helper'

class BorrowersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @borrower = borrowers(:one)
  end

  test "should get index" do
    get borrowers_url
    assert_response :success
  end

  test "should get new" do
    get new_borrower_url
    assert_response :success
  end

  test "should create borrower" do
    assert_difference('Borrower.count') do
      post borrowers_url, params: { borrower: { memo: @borrower.memo, name: @borrower.name, price: @borrower.price } }
    end

    assert_redirected_to borrower_url(Borrower.last)
  end

  test "should show borrower" do
    get borrower_url(@borrower)
    assert_response :success
  end

  test "should get edit" do
    get edit_borrower_url(@borrower)
    assert_response :success
  end

  test "should update borrower" do
    patch borrower_url(@borrower), params: { borrower: { memo: @borrower.memo, name: @borrower.name, price: @borrower.price } }
    assert_redirected_to borrower_url(@borrower)
  end

  test "should destroy borrower" do
    assert_difference('Borrower.count', -1) do
      delete borrower_url(@borrower)
    end

    assert_redirected_to borrowers_url
  end
end
