class HomesController < ApplicationController
  def index
    @routes = Rails.application.routes.routes.map do |route|
      {
        controller: route.defaults[:controller],
        action: route.defaults[:action],
        path: route.path.spec.to_s.gsub(/\(\.:format\)/, ''),
        method: route.verb
      }
    end
  end
end
