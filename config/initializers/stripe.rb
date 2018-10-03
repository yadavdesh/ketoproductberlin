if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_koDCTvIjUf7N5chq9FzgxckR',
    secret_key: 'sk_test_iSzJr2yluqEUBqF9slJ43CDt'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
