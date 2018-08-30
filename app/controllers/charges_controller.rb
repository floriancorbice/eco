class ChargesController < ApplicationController
  def new
  end

  def create
    # Amount in cents
    @amount = 500


    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

    if charge.save
        flash[:notice] = "Vous allez recevoir un mail de confiramtion!"
        @destroy
        session.delete(:cart_id)
        
      else
        flash[:notice] = "Problème de paiement"

      end
    end



end
