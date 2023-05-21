require_relative 'user'

class Teacher < User
  def teach
    User::KNOWLEDGE.sample
  end
end