module Unknown

  class NotFoundController < ApplicationController

    def _404
      @response.status = 404
      "Not found"
    end

  end

end