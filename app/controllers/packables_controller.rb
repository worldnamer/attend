class PackablesController < ApplicationController
  respond_to :html, :json

  # GET /contexts/1/packing_lists/1/packables/new
  # GET /contexts/1/packing_lists/1/packables/new.json
  def new
    @packing_list = PackingList.find(params[:packing_list_id])
    @context = @packing_list.context
    @packable = @packing_list.packables.build

    respond_with @packable
  end

  # PUT /contexts/1/packing_lists/1/packables/1
  # PUT /contexts/1/packing_lists/1/packables/1.json
  def update
    @packing_list = PackingList.find(params[:packing_list_id])
    @context = @packing_list.context
    @packable = @packing_list.packables.find(params[:packable_id])

    respond_to do |format|
      if @packable.update_attributes(params[:packable])
        format.html { redirect_to @packing_list, notice: 'Packing List was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @packable.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST /contexts/1/packing_lists/1/packables
  # POST /contexts/1/packing_lists/1/packables.json
  def create
    @packing_list = PackingList.find(params[:packing_list_id])
    @context = @packing_list.context
    @packable = @packing_list.packables.build(params[:packable])

    respond_to do |format|
      if @packable.save
        format.html { redirect_to [@context, @packing_list], notice: 'Packable was successfully created.' }
        format.json { render json: @packing_list, status: :created, location: @packable }
      else
        format.html { render action: "new" }
        format.json { render json: @packable.errors, status: :unprocessable_entity }
      end
    end
  end
end