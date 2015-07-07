class OpportunitiesController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create]

  def index
    @opportunities = Opportunity.all
  end

  def new
    @opportunity = Opportunity.new
  end

  def create
    current_user.opportunities.create(opportunity_params)
    redirect_to root_path
  end

  private

  def opportunity_params
    params.require(:opportunity).permit(:opportunity, :exploit, :priority)
  end

end
