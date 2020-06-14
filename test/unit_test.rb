require 'test/unit'
require_relative 'test_case'


require_relative '../controllers/community_notifications_controller'
class TestNotification < Test::Unit::TestCase
  include TestCase

  def test
    given_basic_case_test
    empty_case_test
  end

  def given_basic_case_test
    notifications = Cases[:case1][:input][:notifications]
    user_id = Cases[:case1][:input][:user_id]
    output = Cases[:case1][:output]
    controller = CommunityNotificationsController.new
    assert_equal(
      output,
      controller.get_notifications_for_user(notifications, user_id)
    )
  end

  def empty_case_test
    notifications = Cases[:case2][:input][:notifications]
    user_id = Cases[:case2][:input][:user_id]
    output = Cases[:case2][:output]
    controller = CommunityNotificationsController.new
    assert_equal(
      output,
      controller.get_notifications_for_user(notifications, user_id)
    )
  end
end