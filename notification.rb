require 'json'
require_relative 'controllers/community_notifications_controller'

raise "You need 2 arguments on CLI !" if (ARGV[0].nil? || ARGV[1].nil?) || !ARGV.length.eql?(2)

file_name = ARGV[0]
user_id = ARGV[1]
notification_json_file = JSON.parse(File.read(file_name), symbolize_names: true)
controller = CommunityNotificationsController.new

puts controller.get_notifications_for_user(notification_json_file, user_id)


