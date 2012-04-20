class BillsController < ApplicationController
  before_filter :authenticate_user!, :redirect_sub_account, :redirect_company

  def index
    
  end

  def new
    @bill = Bill.new
  end

  def create
    @bill = Bill.new(params[:bill])
    @bill.user = current_user
    @bill.company = current_company
    if @bill.save
      redirect_to(bills_path, :notice => "The bill was successfully created.")
    else
      render :action => :new
    end
  end

end
