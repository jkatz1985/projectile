User.create!([
  {id: 1, email: "jk@jk.com", encrypted_password: "$2a$10$.EbSwYU1/BmoT9sueXy/ceZdxtXcXCjrlhBgtXoGBlSqq7FLDIjYO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 5, current_sign_in_at: "2015-05-30 20:54:37", last_sign_in_at: "2015-05-30 20:49:34", current_sign_in_ip: "::1", last_sign_in_ip: "::1", first_name: "John", last_name: "Kite", title: "Ops Manager", division: "EVS", expertise: "Operations", created_at: "2015-05-30 15:27:09", updated_at: "2015-05-30 20:57:25"},
  {id: 2, email: "az@az.com", encrypted_password: "$2a$10$LA3l1wnAcb5lZhbofnyLXOYF1lSxKfetNa95/vxWM/u6NguC5LzEu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-30 19:36:33", last_sign_in_at: "2015-05-30 19:36:33", current_sign_in_ip: "::1", last_sign_in_ip: "::1", first_name: "Alana", last_name: "Z", title: nil, division: nil, expertise: nil, created_at: "2015-05-30 19:36:33", updated_at: "2015-05-30 19:36:33"},
  {id: 3, email: "jp@jp.com", encrypted_password: "$2a$10$ymD4Ltv76q.o16svDzSvTuNf6IC/2XW6azsvglCdcTCWsjn6XLkHO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-30 19:37:40", last_sign_in_at: "2015-05-30 19:37:40", current_sign_in_ip: "::1", last_sign_in_ip: "::1", first_name: "Jonathan", last_name: "P", title: nil, division: nil, expertise: nil, created_at: "2015-05-30 19:37:39", updated_at: "2015-05-30 19:37:40"},
  {id: 4, email: "sm@sm.com", encrypted_password: "$2a$10$XXGgW0OaMnV4.sFBQtDNZujq0YYzrPSfs1pp4LCe/pX/YX2gwfAXK", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-30 19:39:29", last_sign_in_at: "2015-05-30 19:39:29", current_sign_in_ip: "::1", last_sign_in_ip: "::1", first_name: "Sissi", last_name: "M", title: nil, division: nil, expertise: nil, created_at: "2015-05-30 19:39:29", updated_at: "2015-05-30 19:39:29"},
  {id: 5, email: "jkatz@medline.com", encrypted_password: "$2a$10$3Jik8IBL/2NDXrf5iRja5O1Sn11PwNQmuxHx35uGXZ4FkJ9fQl7bu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 5, current_sign_in_at: "2015-05-31 15:48:00", last_sign_in_at: "2015-05-31 00:13:07", current_sign_in_ip: "::1", last_sign_in_ip: "::1", first_name: "Jacob", last_name: "Katz", title: "Sr. Marketing Manager", division: "Advanced Skin and Wound Care", expertise: "Marketing", created_at: "2015-05-30 20:37:34", updated_at: "2015-05-31 15:48:00"},
  {id: 6, email: "jnewell@medline.com", encrypted_password: "$2a$10$VI0znUo61uqIHbSf7jrcaOuZC6uO.BuzImVcFZnrH1T2SsaJUP6VK", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-30 20:48:55", last_sign_in_at: "2015-05-30 20:48:55", current_sign_in_ip: "::1", last_sign_in_ip: "::1", first_name: "Jennifer", last_name: "Newell", title: "Product Manager", division: "Advanced Skin and Wound Care", expertise: "Marketing", created_at: "2015-05-30 20:48:54", updated_at: "2015-05-30 20:48:55"},
  {id: 7, email: "ajford@medline.com", encrypted_password: "$2a$10$VweNATGOADMYh3nC/Tt3l.9lujVLjS3VwPIN7jiUGo./NzyTujltu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-31 00:12:04", last_sign_in_at: "2015-05-31 00:12:04", current_sign_in_ip: "::1", last_sign_in_ip: "::1", first_name: "AJ", last_name: "Ford", title: "Sr. Product Manager", division: "Advanced Skin and Wound Care", expertise: "Marketing", created_at: "2015-05-31 00:12:04", updated_at: "2015-05-31 00:12:04"}
])
Project.create!([
  {id: 1, project_name: "Awesome trash bag", user_id: 1, description: "no waste!", customer_pain: "no manpower to deal with trash", status: "Concept development", manager_id: 0, created_at: "2015-05-30 21:19:01", updated_at: "2015-05-30 21:19:01"},
  {id: 2, project_name: "Total Contact Casting", user_id: 5, description: "Offloading is a major concern for healing of wounds - Total contact casting allows for assurance that there will be little to no pressure on the wound during the healing process", customer_pain: "Poor compliance levels by customers", status: "Concept exploration", manager_id: 0, created_at: "2015-05-30 21:28:34", updated_at: "2015-05-30 21:28:34"},
  {id: 3, project_name: "Negative Pressure Wound Therapy", user_id: 5, description: "Delivering suction to the wound has been shown to have some clinical benefit", customer_pain: "current solutions are costly ", status: "Concept exploration", manager_id: nil, created_at: "2015-05-31 00:08:46", updated_at: "2015-05-31 00:08:46"},
  {id: 4, project_name: "Honey Foam", user_id: 7, description: "People love honey foam", customer_pain: "there is no honey foam", status: "Concept exploration", manager_id: nil, created_at: "2015-05-31 00:12:50", updated_at: "2015-05-31 00:12:50"}
])
