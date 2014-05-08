class CalculationsController < ApplicationController
  def home
  end

  def square
    @the_number = params[:number].to_f
    @answer = @the_number * @the_number
  end

  def sqrt
    @the_number = params[:number].to_f
    @answer = Math.sqrt(@the_number)
  end

  def pmt
    @principal_amount = params[:present_value].to_f
    @interest_rate = params[:interest_rate].to_f
    @number_of_payments = params[:number_of_payments].to_f

    @monthly_interest_rate = @interest_rate / 1200

    @numerator = @monthly_interest_rate * @principal_amount
    @denominator = 1 - (1 + @monthly_interest_rate)** -@number_of_payments

    @payment = @numerator / @denominator
  end
end



