class PackingListsController < ApplicationController
  respond_to :html, :json

  # GET /contexts/1/packing_lists
  # GET /contexts/1/packing_lists.json
  def show
    @context = Context.find(params[:context_id])
    @packing_list = @context.packing_lists.find(params[:id])

    respond_with @packing_list
  end

  # GET /contexts/1/packing_lists/new
  # GET /contexts/1/packing_lists/new.json
  def new
    @context = Context.find(params[:context_id])
    @packing_list = @context.packing_lists.build

    respond_with @packing_list
  end

  # PUT /contexts/1
  # PUT /contexts/1.json
  def update
    @context = Context.find(params[:context_id])
    @packing_list = @context.packing_lists.find(params[:id])

    respond_to do |format|
      if @packing_list.update_attributes(params[:packing_list])
        format.html { redirect_to @packing_list, notice: 'Context was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @packing_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST /contexts/1/packing_lists
  # POST /contexts/1/packing_lists.json
  def create
    @context = Context.find(params[:context_id])
    @packing_list = @context.packing_lists.build(params[:packing_list])

    respond_to do |format|
      if @packing_list.save
        format.html { redirect_to @context, notice: 'Packing List was successfully created.' }
        format.json { render json: @packing_list, status: :created, location: @packing_list }
      else
        format.html { render action: "new" }
        format.json { render json: @packing_list.errors, status: :unprocessable_entity }
      end
    end
  end
end