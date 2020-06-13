require_relative '../data_structures/max_priority_queue'
class CommunityPushNotification ## < ApplicationRecord
  MAX_USERS_DISPLAYED_ON_MESSAGE = 3
  NOTIFICATION_TYPE_MESSAGE_HASH = {
    1 => ' answered on a question',
    2 => ' commented on a question',
    3 => ' upvoted on a question',
  }

  def self.build_merged_notifications(notifications)
    puts "here's model class method!"
    pq_hash = Hash.new
    notifications.each do |item| # Time Complexity: N*logN
      # key = [item['user_id'], item['notification_type_id'], item['target_id']]
      key = {
        :user_id => item['user_id'],
        :notification_type_id => item['notification_type_id'],
        :target_id => item['target_id']
      }
      value_to_push = [item['created_at'], item['sender_id']]
      pq_hash.has_key?(key) ? pq_hash[key].insert(value_to_push) : pq_hash[key] = MaxPriorityQueue.new.insert(value_to_push)
    end

    # Build pair (Message, Max timestamp by notification type) array
    messages_with_max_timestamp = build_messages_with_max_timestamp(pq_hash)

  end

  private
  def self.build_messages_with_max_timestamp(hash)
    arr = []
    hash.each do |key, value|
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
    puts arr
  end

end