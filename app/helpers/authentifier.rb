module Auth
class Authentifier
  class << self

    def isValid?( aUser, itsPass )
      return ( aUser.pass == itsPass )
    end

  end # Class' methods
end # Class
end # Module
