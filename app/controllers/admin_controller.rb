class AdminController < ApplicationController
  layout "backend"
  load_and_authorize_resource
  def index
  end
end
