class DonationsController < ApplicationController

  def home
    @donations = Donation.all
    total = 0
    @donations.each {|x| total += x.amount}
    @total = total
    @goal_amount = 1000
  end


  def food_page
    @donations = Donation.all
    total = 0
    @donations.each {|x| total += x.amount}
    @total = total
    @goal_amount = 1000
  end

  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(donation_params)
    if @donation.save
      redirect_to donations_path
    else
      render :new
    end
  end

private

  def donation_params
    params.require(:donation).permit(:cause, :name, :street_address, :city, :state, :zip, :cc_type, :cc_number, :cc_expir, :cc_sec, :amount)
  end

end
