module Translator
  class Dispatcher
    def call(env)
      path_info = env['PATH_INFO']

      app = case path_info
        when %r{^/api} then ApiController.new
      end

      app.call(env)
    end
  end
end
