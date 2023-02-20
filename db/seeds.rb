Subscription.destroy_all

s1 =
  Subscription.create(
    first_name: "Joe",
    last_name: "Biden",
    email: "joe@ga.com",
    subscribed: true,
    topics: [
      "Attractions",
      "Promotions",
      "Latest Events",
      "Volunteer Opportunities",
      "Sponsorships",
      "Marketing",
    ],
  )

s1 =
  Subscription.create(
    first_name: "Donald",
    last_name: "Trump",
    email: "donald@ga.com",
    subscribed: true,
    topics: [
      "Attractions",
      "Promotions",
      "Latest Events",
      "Volunteer Opportunities",
      "Sponsorships",
      "Marketing",
    ],
  )

s3 =
  Subscription.create(
    first_name: "George",
    last_name: "Bush",
    email: "george@ga.com",
    subscribed: true,
    topics: [
      "Attractions",
      "Promotions",
      "Latest Events",
      "Volunteer Opportunities",
      "Sponsorships",
      "Marketing",
    ],
  )

puts "#{Subscription.count} users created."
