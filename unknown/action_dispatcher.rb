module Unknown

  class ActionDispatcher

    def self.dispatch(request, response)
      controller_name, action_name = Router.mappings[request.path_info].split("#") rescue [nil, nil]

      unless controller_name.nil?
        controller = Object.const_get("#{controller_name}Controller").new(request, response)
        controller.process(action_name)
      else
        NotFoundController.new(request, response).process(:_404)
      end
    end

  end

end