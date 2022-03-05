require "application_system_test_case"

class ModalsTest < ApplicationSystemTestCase
  setup do
    @modal = modals(:one)
  end

  test "visiting the index" do
    visit modals_url
    assert_selector "h1", text: "Modals"
  end

  test "should create modal" do
    visit modals_url
    click_on "New modal"

    fill_in "User", with: @modal.User
    fill_in "Email", with: @modal.email
    fill_in "Name", with: @modal.name
    fill_in "Password digest", with: @modal.password_digest
    fill_in "Remember digest", with: @modal.remember_digest
    click_on "Create Modal"

    assert_text "Modal was successfully created"
    click_on "Back"
  end

  test "should update Modal" do
    visit modal_url(@modal)
    click_on "Edit this modal", match: :first

    fill_in "User", with: @modal.User
    fill_in "Email", with: @modal.email
    fill_in "Name", with: @modal.name
    fill_in "Password digest", with: @modal.password_digest
    fill_in "Remember digest", with: @modal.remember_digest
    click_on "Update Modal"

    assert_text "Modal was successfully updated"
    click_on "Back"
  end

  test "should destroy Modal" do
    visit modal_url(@modal)
    click_on "Destroy this modal", match: :first

    assert_text "Modal was successfully destroyed"
  end
end
