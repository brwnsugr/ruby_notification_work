require_relative '../models/community_push_notification'
class CommunityNotificationsController ## < ApplicationController
  PERMITTED_KEYS = {
    :user_id => true, 
    :notification_type_id => true, 
    :sender_id => true, 
    :sender_type => true, 
    :target_id => true, 
    :target_type => true, 
    :created_at => true
  }

  def get_notifications_for_user(notifications, user_id)
    filtered_notifications_by_user = notifications.select{ |item| item[:user_id].eql?(user_id) }
    permit_notification_key_params(filtered_notifications_by_user)
    raise "User_id was not Found or Notification file is empty. Please Check Again!" if filtered_notifications_by_user.empty? 

    CommunityPushNotification.build_merged_notifications(filtered_notifications_by_user)
    ## Define the jobs below, which Enqueues the Notifications into.
  end

  private
  def permit_notification_key_params(notifications)
    notifications.each do |item|
      item.keys.each{|key| item.delete(key) unless PERMITTED_KEYS.has_key? key }
    end
    notifications
  end
end