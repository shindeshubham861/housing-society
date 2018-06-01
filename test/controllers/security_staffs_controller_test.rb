require 'test_helper'

class SecurityStaffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @security_staff = security_staffs(:one)
  end

  test "should get index" do
    get security_staffs_url
    assert_response :success
  end

  test "should get new" do
    get new_security_staff_url
    assert_response :success
  end

  test "should create security_staff" do
    assert_difference('SecurityStaff.count') do
      post security_staffs_url, params: { security_staff: { daily_task: @security_staff.daily_task, guard_name: @security_staff.guard_name, salary: @security_staff.salary, staff_info: @security_staff.staff_info, work_timing: @security_staff.work_timing } }
    end

    assert_redirected_to security_staff_url(SecurityStaff.last)
  end

  test "should show security_staff" do
    get security_staff_url(@security_staff)
    assert_response :success
  end

  test "should get edit" do
    get edit_security_staff_url(@security_staff)
    assert_response :success
  end

  test "should update security_staff" do
    patch security_staff_url(@security_staff), params: { security_staff: { daily_task: @security_staff.daily_task, guard_name: @security_staff.guard_name, salary: @security_staff.salary, staff_info: @security_staff.staff_info, work_timing: @security_staff.work_timing } }
    assert_redirected_to security_staff_url(@security_staff)
  end

  test "should destroy security_staff" do
    assert_difference('SecurityStaff.count', -1) do
      delete security_staff_url(@security_staff)
    end

    assert_redirected_to security_staffs_url
  end
end
