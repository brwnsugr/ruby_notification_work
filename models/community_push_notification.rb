require_relative '../data_structures/max_priority_queue'
class CommunityPushNotification ## < ApplicationRecord
  SGT_TIMEZONE = 28800
  MAX_USERS_DISPLAYED_ON_MESSAGE = 3
  NOTIFICATION_TYPE_MESSAGE_HASH = {
    1 => ' answered a question',
    2 => ' commented on a question',
    3 => ' upvoted a question',
    # If you want to add more Extra notification Type, Add a key-value pair
  }

  def self.build_merged_notifications(notifications)
    pq_hash = Hash.new
    notifications.each do |item| # Time Complexity: N*logN
      next if item[:user_id].eql?(item[:sender_id])
      key = {
        :user_id => item[:user_id],
        :notification_type_id => item[:notification_type_id],
        :target_id => item[:target_id]
      }
      value_to_push = [item[:created_at], item[:sender_id]]
      pq_hash.has_key?(key) ? pq_hash[key].insert(value_to_push) : pq_hash[key] = MaxPriorityQueue.new.insert(value_to_push)
    end
    # Build pair (Message, Max timestamp by notification type) array
    messages_with_max_timestamp = build_messages_with_max_timestamp(pq_hash)
  end

  private
  def self.build_messages_with_max_timestamp(hash)
    arr = []
    hash.each do |key, value|
      next if NOTIFICATION_TYPE_MESSAGE_HASH[key[:notification_type_id]].nil?
      message = ""
      user_count = 0
      while(1)
        user = value.next
        max_timestamp_by_notification_type = user[0] if user_count.eql?(0)
        break if user.nil? || user_count > MAX_USERS_DISPLAYED_ON_MESSAGE
        message += user_count.eql?(0) ? user[1] : (' and ' + user[1])
        user_count += 1
      end
      message += NOTIFICATION_TYPE_MESSAGE_HASH[key[:notification_type_id]]
      arr << [max_timestamp_by_notification_type, message]
    end
    arr.sort_by!(&:first) # sort by time with ascending order
    concat_timestamp_and_message(arr)
  end

  def self.concat_timestamp_and_message(arr)
    arr.map!{|item| 
      converted_time = convert_timestamp_to_singapore_time(item[0])
      converted_time + item[1]
      }
  end

  def self.convert_timestamp_to_singapore_time(timestamp)
    sgt_time = Time.at(timestamp/1000).utc + SGT_TIMEZONE
    sgt_time.strftime('[%Y-%m-%d %H:%M:%S] ')
  end
end