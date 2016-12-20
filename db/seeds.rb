PublicActivity::ORM::ActiveRecord::Activity.create!([
  {trackable_type: "Friendship", trackable_id: 13, owner_type: "User", owner_id: 1, key: "friendship.accepted", parameters: {}, recipient_type: "User", recipient_id: 6},
  {trackable_type: "Friendship", trackable_id: 13, owner_type: "User", owner_id: 6, key: "friendship.accepted", parameters: {}, recipient_type: "User", recipient_id: 1},
  {trackable_type: "Friendship", trackable_id: 15, owner_type: "User", owner_id: 1, key: "friendship.accepted", parameters: {}, recipient_type: "User", recipient_id: 4},
  {trackable_type: "Friendship", trackable_id: 15, owner_type: "User", owner_id: 4, key: "friendship.accepted", parameters: {}, recipient_type: "User", recipient_id: 1},
  {trackable_type: "Post", trackable_id: 1, owner_type: "User", owner_id: 1, key: "post.created", parameters: {}, recipient_type: nil, recipient_id: nil}
])
User.create!([
  {email: "grow.food.everywhere@gmail.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 18, current_sign_in_at: "2016-12-20 15:41:13", last_sign_in_at: "2016-12-19 18:02:08", current_sign_in_ip: "::1", last_sign_in_ip: "::1", username: "BobabaBeebe", name: "Matthew", age: 28, bio: "I am the bestest designer ever! hoorAY! and here is some more information!", school: "Tech Talent South", work: "Caribou Cofffee"},
  {email: "student0@gmail.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, username: "awesomeStudent0", name: nil, age: nil, bio: nil, school: nil, work: nil},
  {email: "student1@gmail.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, username: "awesomeStudent1", name: nil, age: nil, bio: nil, school: nil, work: nil},
  {email: "student2@gmail.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-12-19 16:35:45", last_sign_in_at: "2016-12-19 16:35:45", current_sign_in_ip: "::1", last_sign_in_ip: "::1", username: "awesomeStudent2", name: nil, age: nil, bio: nil, school: nil, work: nil},
  {email: "student3@gmail.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, username: "awesomeStudent3", name: nil, age: nil, bio: nil, school: nil, work: nil},
  {email: "student4@gmail.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-12-19 16:19:18", last_sign_in_at: "2016-12-19 16:19:18", current_sign_in_ip: "::1", last_sign_in_ip: "::1", username: "awesomeStudent4", name: nil, age: nil, bio: nil, school: nil, work: nil}
])
Friendship.create!([
  {user_id: 2, friend_id: 3, state: "active", friended_at: "2016-12-16 15:50:43"},
  {user_id: 1, friend_id: 3, state: "active", friended_at: "2016-12-16 15:53:53"},
  {user_id: 1, friend_id: 2, state: "active", friended_at: "2016-12-16 15:56:26"},
  {user_id: 3, friend_id: 4, state: "active", friended_at: "2016-12-16 16:00:06"},
  {user_id: 2, friend_id: 4, state: "active", friended_at: "2016-12-16 16:25:22"},
  {user_id: 2, friend_id: 5, state: "active", friended_at: "2016-12-16 16:36:08"},
  {user_id: 5, friend_id: 3, state: "pending", friended_at: nil},
  {user_id: 1, friend_id: 5, state: "pending", friended_at: nil},
  {user_id: 1, friend_id: 4, state: "active", friended_at: "2016-12-19 16:35:51"}
])
Post.create!([
  {user_id: 1, content: "Yum! A sandwich!"}
])
