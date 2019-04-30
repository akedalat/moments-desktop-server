class RelationshipsController < ApplicationController

  def index
    @relationship = Relationship.all
    render json: @relationship, status: 200
  end

  def show
    @relationship = Relationship.find(params[:id])
    render json: @relationship, status: 200
  end

  def created
    @relationship = Relationship.new
    if @relationship.save
      render json: @relationship, status: 200
    end
  end

    def destroy
      @relationship = Relationship.find(params[:id])
      @relationship.destroy
      render json: {message:"Zap! relationship deleted"}
    end

end
