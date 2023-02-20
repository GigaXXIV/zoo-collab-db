json.extract! subscription,
              :id,
              :id,
              :first_name,
              :last_name,
              :email,
              :subscribed,
              :topics,
              :created_at,
              :updated_at
json.url subscription_url(subscription, format: :json)
