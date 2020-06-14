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
    }
  }
end