require 'test/unit'
require_relative 'test_case'


require_relative '../controllers/community_notifications_controller'
class TestNotification < Test::Unit::TestCase
  include TestCase

  def test
    controller = CommunityNotificationsController.new
    Cases.each do |key, value|
      notifications = value[:input][:notifications]
      user_id = value[:input][:user_id]
      output = value[:output]
      assert_equal( 
        output,
        controller.get_notifications_for_user(notifications, user_id)
      )
    end
  end
end