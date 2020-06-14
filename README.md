# ruby_notification_work(assignment)
for Optimizing the Notifications for each user

# Manual
1. How to Run on CLI 
  - From the Root Directory of this project, put a .json file to run and type the command below.
  ```bash
  $ pwd
  ~/ruby_notification_work   ####check if here's on Root dir on the project. 
  $ ruby notification.rb notifications.json hackamorevisiting ####'notification.json': input file name, 'hackamorevisiting': user_id to get
  $ 
  ```
  - After you type above, you will see the result on CLI as belows! 
  ```bash
  [2019-11-21 16:45:03] gratuitystopper answered a question
  [2019-11-21 16:45:17] funeralpierce upvoted a question
  [2019-11-21 16:45:59] backwarddusty and makerchorse commented on a question
  [2019-11-21 16:47:08] makerchorse commented on a question
  ```
  
2. How to run Test Code on CLI
  - From the Root Directory of this project, type the command below. 
  ```bash
  $ pwd
  ~/ruby_notification_work   ####check if here's on Root dir on the project. 
  $ ruby run_test.rb
  ```
  
  - After you type above, you will see the result on CLI as belows!
  ```bash
  Loaded suite run_test
  Started
  .

  Finished in 0.001359 seconds.
  --------------------------------------------------------------------------------------------------------------------
  1 tests, 6 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
  100% passed
  --------------------------------------------------------------------------------------------------------------------
  735.84 tests/s, 4415.01 assertions/s
  ```
  - at the Case Above, 6 assertion checks were executed and all passed. 
  - If you want to add new test cases, you may write the test cases as hash in ruby_notification_work/test/test_case.rb


# Assumptions 

1. Only NotificationType 1,2,3 are considered to the output. (Since other number of NotificationType is not defined, skip these elements.)   
2. TimeStamp 
    * All the events Are sorted by timestamp(13 digits) values by ascending order. 
        * e.g  value of timestamp1 is 10, value of  timestamp2 is 20. Though both timestamps have the same date time when Converted( [1970-01-01 08:00:00] ), sorting them by timestamp ascending order.
    * Timestamp has unique value for every event. (So, didn’t consider the stable sort when sorting the timestamps).
    * Set the default time zone as SGT(Singapore Time). So it would always print out the output based on SGT date time. 
3. When Merging the Notifications, there would not be over 3 notifications duplicated(Set the max allowed numbers of merged as a variable on the Model, which can be changed.) So, In the case that over 3 Notifications, skip the Remainders.
