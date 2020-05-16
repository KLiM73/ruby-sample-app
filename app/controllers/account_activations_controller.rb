class AccountActivationsController < ApplicationController
  include SessionsHelper

  def edit
    user = User.find_by(email: params[:email])
    if user&.authenticated?(params[:id], :activation) && !user.activated?
      user.activate
      log_in user
      flash[:success] = 'Account activated!'
      redirect_to user
    else
      flash[:danger] = 'Invalid activation link'
      redirect_to root_url
    end
  end
end