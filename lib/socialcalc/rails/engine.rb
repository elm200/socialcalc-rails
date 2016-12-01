module Socialcalc
  module Rails
    class Engine < ::Rails::Engine
      isolate_namespace Socialcalc::Rails
    end
  end
end
