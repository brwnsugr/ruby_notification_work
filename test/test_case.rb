module TestCase
  Cases = {
    case1: {
      output: [
          '[2019-11-21 16:45:03] gratuitystopper answered a question',
          '[2019-11-21 16:45:17] funeralpierce upvoted a question',
          '[2019-11-21 16:45:59] backwarddusty and makerchorse commented on a question',
          '[2019-11-21 16:47:08] makerchorse commented on a question'
          ],
      input:{
        user_id: 'hackamorevisiting',
        notifications: [
          {
            "user_id": "hackamorevisiting",
            "notification_type_id": 2,
            "sender_id": "makerchorse",
            "sender_type": "User",
            "target_id": 46,
            "target_type": "Question",
            "created_at": 1574325866040
          }, 
          {
            "user_id": "hackamorevisiting",
            "notification_type_id": 1,
            "sender_id": "gratuitystopper",
            "sender_type": "User",
            "target_id": 37,
            "target_type": "Question",
            "created_at": 1574325903935
          }, 
          {
            "user_id": "hackamorevisiting",
            "notification_type_id": 3,
            "sender_id": "funeralpierce",
            "sender_type": "User",
            "target_id": 36,
            "target_type": "Question",
            "created_at": 1574325917276
          }, 
          {
            "user_id": "hackamorevisiting",
            "notification_type_id": 2,
            "sender_id": "backwarddusty",
            "sender_type": "User",
            "target_id": 46,
            "target_type": "Question",
            "created_at": 1574325959410
          }, 
          {
            "user_id": "hackamorevisiting",
            "notification_type_id": 2,
            "sender_id": "makerchorse",
            "sender_type": "User",
            "target_id": 95,
            "target_type": "Question",
            "created_at": 1574326028535
          }
        ]
      }
    },

    case2: {
      output: [],
      input:{
        user_id: 'abc',
        notifications: [
          {
            "user_id": "abc",
            "notification_type_id": 2,
            "sender_id": "abc",
            "sender_type": "User",
            "target_id": 46,
            "target_type": "Question",
            "created_at": 1
          }, 
          {
            "user_id": "abc",
            "notification_type_id": 1,
            "sender_id": "abc",
            "sender_type": "User",
            "target_id": 37,
            "target_type": "Question",
            "created_at": 2
          }
        ]
      }
    },

    case3: {
      output: [
        '[1970-01-01 08:00:00] seedly_user2 commented on a question'
      ],
      input:{
        user_id: 'seedly_user1',
        notifications: [
          {
            "user_id": "seedly_user1",
            "notification_type_id": 2,
            "sender_id": "seedly_user2",
            "sender_type": "User",
            "target_id": 1111,
            "target_type": "Question",
            "created_at": 10
          }, 
          {
            "user_id": "seedly_user2",
            "notification_type_id": 1,
            "sender_id": "seedly_user1",
            "sender_type": "User",
            "target_id": 22,
            "target_type": "Question",
            "created_at": 2
          }
        ]
      }
    },

    case4: {
      output: [
        '[1970-01-01 08:00:00] seedly_user2 commented on a question',
        '[1970-03-06 15:12:02] seedly_user3 and seedly_user4 answered a question'
      ],
      input:{
        user_id: 'seedly_user1',
        notifications: [
          {
            "user_id": "seedly_user1",
            "notification_type_id": 2,
            "sender_id": "seedly_user2",
            "sender_type": "User",
            "target_id": 22,
            "target_type": "Question",
            "created_at": 10
          }, 
          {
            "user_id": "seedly_user1",
            "notification_type_id": 1,
            "sender_id": "seedly_user1",
            "sender_type": "User",
            "target_id": 22,
            "target_type": "Question",
            "created_at": 2
          },
          {
            "user_id": "seedly_user1",
            "notification_type_id": 1,
            "sender_id": "seedly_user3",
            "sender_type": "User",
            "target_id": 22,
            "target_type": "Question",
            "created_at": 5555522222
          },
          {
            "user_id": "seedly_user1",
            "notification_type_id": 1,
            "sender_id": "seedly_user4",
            "sender_type": "User",
            "target_id": 22,
            "target_type": "Question",
            "created_at": 2222222222
          }
        ]
      }
    },

    case5: {
      output: [
        '[1970-01-01 08:00:00] seedly_user1 answered a question'
      ],
      input:{
        user_id: 'seedly_user3',
        notifications: [
          {
            "user_id": "seedly_user3",
            "notification_type_id": 1,
            "sender_id": "seedly_user1",
            "sender_type": "User",
            "target_id": 22,
            "target_type": "Question",
            "created_at": 2
          },
          {
            "user_id": "seedly_user1",
            "notification_type_id": 1,
            "sender_id": "seedly_user3",
            "sender_type": "User",
            "target_id": 22,
            "target_type": "Question",
            "created_at": 5555522222
          },
          {
            "user_id": "seedly_user1",
            "notification_type_id": 1,
            "sender_id": "seedly_user4",
            "sender_type": "User",
            "target_id": 22,
            "target_type": "Question",
            "created_at": 2222222222
          }
        ]
      }
    },

    case6: {
      output: [
        '[1970-01-01 08:16:39] seedly_user4 upvoted a question',
        '[1970-01-01 08:16:39] seedly_user4 commented on a question',
        '[1970-01-27 01:17:02] seedly_user44 answered a question',
        '[1970-03-06 15:12:02] seedly_user999 and seedly_user4 and seedly_user1 answered a question'
      ],
      input:{
        user_id: 'seedly_user2',
        notifications: [
          {
            "user_id": "seedly_user2",
            "notification_type_id": 1,
            "sender_id": "seedly_user1",
            "sender_type": "User",
            "target_id": 22,
            "target_type": "Question",
            "created_at": 10000
          },
          {
            "user_id": "seedly_user2",
            "notification_type_id": 1,
            "sender_id": "seedly_user999",
            "sender_type": "User",
            "target_id": 22,
            "target_type": "Question",
            "created_at": 5555522222
          },
          {
            "user_id": "seedly_user1",
            "notification_type_id": 1,
            "sender_id": "seedly_user99",
            "sender_type": "User",
            "target_id": 22,
            "target_type": "Question",
            "created_at": 2222222222
          },
          {
            "user_id": "seedly_user2",
            "notification_type_id": 1,
            "sender_id": "seedly_user44",
            "sender_type": "User",
            "target_id": 55,
            "target_type": "Question",
            "created_at": 2222222223
          },
          {
            "user_id": "seedly_user2",
            "notification_type_id": 1,
            "sender_id": "seedly_user4",
            "sender_type": "User",
            "target_id": 22,
            "target_type": "Question",
            "created_at": 2222222221
          },
          {
            "user_id": "seedly_user2",
            "notification_type_id": 3,
            "sender_id": "seedly_user4",
            "sender_type": "User",
            "target_id": 22,
            "target_type": "Question",
            "created_at": 999998
          },
          {
            "user_id": "seedly_user2",
            "notification_type_id": 2,
            "sender_id": "seedly_user4",
            "sender_type": "User",
            "target_id": 22,
            "target_type": "Question",
            "created_at": 999999
          }
        ]
      }
    }

  }
end