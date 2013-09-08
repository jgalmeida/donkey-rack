require 'date'

Unknown::Router.configure do
  get "/planets" , "Planets#list_planets"
  get "/time"    , "Time#current_time"
end

class PlanetsController < Unknown::ApplicationController

  def list_planets
    ["Venus", "Mercurio", "Terra"]
  end

end

class TimeController < Unknown::ApplicationController

  def current_time
    Time.now
  end

end