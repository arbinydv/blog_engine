module BlogEngine
  class Engine < ::Rails::Engine
    isolate_namespace BlogEngine
    def self.call_method 
      raise StandardError, "An error occured."
    end 
  end
end
