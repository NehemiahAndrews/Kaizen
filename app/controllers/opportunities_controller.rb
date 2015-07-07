class OpportunitiesController < ApplicationController
  def index
    @opportunities = Opportunity.all
  end

  def new
    @opportunity = Opportunity.new
  end

  def create
    @opportunity = Opportunity.create(opportunity_params)

    redirect_to root_path
  end

  private

  def opportunity_params
    params.require(:opportunity).permit(:opportunity, :exploit, :priority)
  end

end
