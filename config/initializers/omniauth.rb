Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV["GOOGLE_CLIENT_ID"], ENV["GOOGLE_CLIENT_SECRET"],
    {
      name: "google",
      scope: "email, profile",
      prompt: "select_account"
    }
  OmniAuth.config.full_host = Rails.env
    .production? ? "https://domain.com" : "http://localhost:3000"
end
