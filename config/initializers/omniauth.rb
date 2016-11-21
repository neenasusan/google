OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '1057699988601-9pf3dffjejudu02su3hklalh19lco0mq.apps.googleusercontent.com', '4ZlKU_GTyoQDwf79Zhy4OL0b',skip_jwt: true
  {
    access_type: 'offline',
    scope: 'https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/calendar',
    redirect_uri:'http://localhost:3000/auth/google_oauth2/callback'
  }
end
