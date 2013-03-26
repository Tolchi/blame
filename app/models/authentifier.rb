module Auth
class Authentifier
  class << self

    def isValid?( aUser, itsPass )
      return ( aUser.pass == '12345' )
    end

  end # Class' methods
end # Class
end # Module
