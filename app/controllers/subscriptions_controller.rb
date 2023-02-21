class SubscriptionsController < ApplicationController
  before_action :set_subscription, only: %i[show edit update destroy]

  # GET /subscriptions or /subscriptions.json
  def index
    @subscriptions = Subscription.all
  end

  # GET /subscriptions/1 or /subscriptions/1.json
  def show
  end

  # GET /subscriptions/new
  def new
    @subscription = Subscription.new
  end

  # GET /subscriptions/1/edit
  def edit
  end

  # POST /subscriptions or /subscriptions.json
  def create
    @subscription = Subscription.new(subscription_params)

    respond_to do |format|
      if @subscription.save
        format.html do
          redirect_to subscription_url(@subscription),
                      notice: "Subscription was successfully created."
        end
        format.json { render :show, status: :created, location: @subscription }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json do
          render json: @subscription.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # PATCH/PUT /subscriptions/1 or /subscriptions/1.json
  def update
    respond_to do |format|
      if @subscription.update(subscription_params)
        format.html do
          redirect_to subscription_url(@subscription),
                      notice: "Subscription was successfully updated."
        end
        format.json { render :show, status: :ok, location: @subscription }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json do
          render json: @subscription.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # DELETE /subscriptions/1 or /subscriptions/1.json
  def destroy
    @subscription.destroy

    respond_to do |format|
      format.html do
        redirect_to subscriptions_url,
                    notice: "Subscription was successfully destroyed."
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_subscription
    @subscription = Subscription.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def subscription_params
    params.permit(
      :first_name,
      :last_name,
      :email,
      :subscribed,
      :topics,
    )
  end
end
