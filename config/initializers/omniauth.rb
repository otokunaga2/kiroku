Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  #provider :twitter, "wryhslsp7r48v5a","xvaxq20jbd103vg"
end
