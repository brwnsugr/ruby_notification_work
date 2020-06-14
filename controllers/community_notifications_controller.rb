require_relative '../models/community_push_notification'
class CommunityNotificationsController ## < ApplicationController
  PERMITTED_KEYS = [
    'user_id', 'notification_type_id', 'sender_id', 'sender_type', 'target_id', 'target_type', 'created_at' 
  ]

  def get_notifications_for_user(notifications, user_id)
    # if user_id = 'all' -> Get notifications for all users
    parsed_notifications = JSON.parse(notifications)
    filtered_notifications_by_user = user_id.eql?('all') ? parsed_notifications : parsed_notifications.select{ |item| item['user_id'].eql?(user_id) }
    permit_notification_key_params(filtered_notifications_by_user)

    raise "User_id was not Found or Notification file is empty. Please Check Again!" if filtered_notifications_by_user.empty? 

    CommunityPushNotification.build_merged_notifications(filtered_notifications_by_user)

    ## Define that EnQueue the Notifications to the jobs below.
  end

  private
  def permit_notification_key_params(notifications)
    notifications.each do |item|
      item.keys.each{|key| item.delete(key) unless PERMITTED_KEYS.include? key }
    end
    notifications
  end


end