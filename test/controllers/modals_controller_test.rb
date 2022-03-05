require "test_helper"

class ModalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @modal = modals(:one)
  end

  test "should get index" do
    get modals_url
    assert_response :success
  end

  test "should get new" do
    get new_modal_url
    assert_response :success
  end

  test "should create modal" do
    assert_difference("Modal.count") do
      post modals_url, params: { modal: { User: @modal.User, email: @modal.email, name: @modal.name, password_digest: @modal.password_digest, remember_digest: @modal.remember_digest } }
    end

    assert_redirected_to modal_url(Modal.last)
  end

  test "should show modal" do
    get modal_url(@modal)
    assert_response :success
  end

  test "should get edit" do
    get edit_modal_url(@modal)
    assert_response :success
  end

  test "should update modal" do
    patch modal_url(@modal), params: { modal: { User: @modal.User, email: @modal.email, name: @modal.name, password_digest: @modal.password_digest, remember_digest: @modal.remember_digest } }
    assert_redirected_to modal_url(@modal)
  end

  test "should destroy modal" do
    assert_difference("Modal.count", -1) do
      delete modal_url(@modal)
    end

    assert_redirected_to modals_url
  end
end
