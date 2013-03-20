# Define your usermap here
# - The keys of this map are users that are sending commands
# - The values are the commands that a user can execute

def get_usermap()
  return {
    'username@host' => [Ping.new]
  }
end
