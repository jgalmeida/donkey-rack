module Unknown
  class App

    def self.call(env)
      req = Rack::Request.new(env)
      res = Rack::Response.new
      ActionDispatcher.dispatch(req, res)
      res.finish
    end

  end
end