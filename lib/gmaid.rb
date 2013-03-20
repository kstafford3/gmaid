require 'rubygems'
require 'gmail'

module Gmaid
  # Run Once
  def Gmaid::run(usermap, gmaid_username, gmaid_password)
    Gmail.connect(gmaid_username, gmaid_password) do |gmail|
      usermap.each do |user, procedures|
        unreadEmail = gmail.inbox.find(:unread, :from => user)
        
        procedures.each do |procedure|
          unreadEmail.each do |email|
            if(procedure.match(email))
              procedure.execute(gmail, user, email)
            end
          end
        end
        unreadEmail.clear()
      end
      
      unreadEmail = gmail.inbox.find(:unread)
      # Archive Email
      unreadEmail.each do |email|
        email.read!
        email.archive!
      end
    end
  end
end
