module Unknown

  class Router

    def self.configure(&block)
      @mappings = {}

      instance_eval(&block)
    end

    def self.mappings
      @mappings
    end

    def self.get(endpoint, action)
      @mappings[endpoint] = action
    end

  end

end