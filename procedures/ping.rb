require_relative 'procedure.rb'

class Ping < Procedure
  def match(email)
    email.subject.match(/^[Pp]ing$/)
  end

  def execute(gmail, user, email)
    gmail.deliver do 
      to user
      subject "PONG"
      body "PONG"
    end
  end
end
