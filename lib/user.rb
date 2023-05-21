class User
    attr_accessor :first_name, :last_name
  
    def initialize(first_name, last_name)
      @first_name = first_name
      @last_name = last_name
    end
  end
  
  # lib/student.rb
  require_relative 'user'
  
  class Student < User
    attr_accessor :knowledge
  
    def initialize(first_name, last_name)
      super(first_name, last_name)
      @knowledge = []
    end
  
    def learn(string)
      @knowledge << string
    end
  
    def knowledge
      @knowledge
    end
  end
  
  # lib/teacher.rb
  require_relative 'user'
  
  class Teacher < User
    KNOWLEDGE = [
      'Math',
      'Science',
      'History',
      'English',
      'Art'
    ]
  
    def teach
      KNOWLEDGE.sample
    end
  end