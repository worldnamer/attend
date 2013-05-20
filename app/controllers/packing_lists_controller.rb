class PackingListsController < ApplicationController
  respond_to :html, :json

  # GET /contexts/1/packing_lists/new
  # GET /contexts/1/packing_lists/new.json
  def new
    @context = Context.find(params[:context_id])
    @packing_list = @context.packing_lists.build

    respond_with @packing_list
  end

  # POST /contexts/1/packing_lists
  # POST /contexts/1/packing_lists.json
  def create
    @context = Context.find(params[:context_id])
    @packing_list = @context.packing_lists.build(params[:packing_list])

    respond_to do |format|
      if @packing_list.save
        format.html { redirect_to @context, notice: 'Context was successfully created.' }
        format.json { render json: @context, status: :created, location: @context }
      else
        format.html { render action: "new" }
        format.json { render json: @context.errors, status: :unprocessable_entity }
      end
    end
  end
end