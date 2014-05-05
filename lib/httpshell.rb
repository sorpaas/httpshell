require 'httpshell/version'

module HTTPShell
  class Environment
    attr_reader :variables
    attr_reader :working_path
    
    def initialize
      @variables = {}
      @working_path = "http://"
    end
    
    def cd(path)
      if /^(http|https|file):\/\//i =~ path
        cd_absolutely(path)
      else
        cd_relatively(path)
      end
    end
    
    private
    def cd_relatively(path)
      path = path.sub /^\//, ''
      path = path.sub /\/$/, ''
      
      if path == '..'
        @working_path = @working_path.sub /\/[^\/]+$/, ''
      elsif path == '.'
        @working_path = @working_path
      else
        @working_path = "#{@working_path}/#{path}"
      end
    end
    
    def cd_absolutely(path)
      path = path.sub /\/$/, ''
      
      @working_path = path
    end
  end
end