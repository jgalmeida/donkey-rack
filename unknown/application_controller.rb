require 'pry'

module Unknown

  class ApplicationController

    def initialize(req, res)
      @request  = req
      @response = res
    end

    def process(action)
      body = send(action.to_sym)
      @response.status = 404
      @response.write(body)
    end

  end

end