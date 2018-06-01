require "application_system_test_case"

class SecurityStaffsTest < ApplicationSystemTestCase
  setup do
    @security_staff = security_staffs(:one)
  end

  test "visiting the index" do
    visit security_staffs_url
    assert_selector "h1", text: "Security Staffs"
  end

  test "creating a Security staff" do
    visit security_staffs_url
    click_on "New Security Staff"

    fill_in "Daily Task", with: @security_staff.daily_task
    fill_in "Guard Name", with: @security_staff.guard_name
    fill_in "Salary", with: @security_staff.salary
    fill_in "Staff Info", with: @security_staff.staff_info
    fill_in "Work Timing", with: @security_staff.work_timing
    click_on "Create Security staff"

    assert_text "Security staff was successfully created"
    click_on "Back"
  end

  test "updating a Security staff" do
    visit security_staffs_url
    click_on "Edit", match: :first

    fill_in "Daily Task", with: @security_staff.daily_task
    fill_in "Guard Name", with: @security_staff.guard_name
    fill_in "Salary", with: @security_staff.salary
    fill_in "Staff Info", with: @security_staff.staff_info
    fill_in "Work Timing", with: @security_staff.work_timing
    click_on "Update Security staff"

    assert_text "Security staff was successfully updated"
    click_on "Back"
  end

  test "destroying a Security staff" do
    visit security_staffs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Security staff was successfully destroyed"
  end
end
