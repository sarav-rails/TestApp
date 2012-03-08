class DealsController < ApplicationController
  def index
		@recruitment_offer = RecruitmentOffer.first
		@recruitment_offer_text = @recruitment_offer ? @recruitment_offer.description : "“A Convict Cordial, our special soda”"
		@slow_hour_offer = SlowHourOffer.first
		@slow_hour_offer = SlowHourOffer.new(:description => "“A Convict Cordial, our special soda”") if @slow_hour_offer.nil?
  end

	def update_recruitment_offer
		recruitment_offer = RecruitmentOffer.first
		recruitment_offer = RecruitmentOffer.new if recruitment_offer.nil?
		recruitment_offer.description = params[:description]
		recruitment_offer.save
		respond_to do |format|  
			format.html { redirect_to(deals_path) }  
			format.js   { render :nothing => true }  
		end 
	end
	
	def update_slow_hour_offer
		slow_hour_offer = SlowHourOffer.first
		slow_hour_offer = SlowHourOffer.create if slow_hour_offer.nil?
		slow_hour_offer.update_attributes(params[:slow_hour_offer])
		respond_to do |format|  
			format.html { redirect_to(deals_path) }  
			format.js   { render :nothing => true }  
		end 
	end
end
