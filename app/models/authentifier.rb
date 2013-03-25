module Auth
class Authentifier
  class << self

    def isValid?( mail, pass )
      return ( mail == 'diego.sanches@gmail.com' and \
        pass == '12345' )
    end

  end # Class' methods
end # Class
end # Module
