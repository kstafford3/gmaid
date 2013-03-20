# Store gmaid credentials here

# My gmaid account is trivial, so I keep the creds in env
def get_gmaid_username()
  return ENV['GMAID_USERNAME']
end

def get_gmaid_password()
  return ENV['GMAID_PASSWORD']
end
