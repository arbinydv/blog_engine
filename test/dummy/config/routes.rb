Rails.application.routes.draw do
  mount BlogEngine::Engine => "/blog_engine"    ## to mount the engine in the test/dummy/config/routes.rb 
end
