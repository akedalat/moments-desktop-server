class RelationshipsController < ApplicationController
before_action :set_relationship, only: [:show, :destroy]

  def index
    relationships = Relationship.all
    render json: relationships, status: 200
  end

  def show
    render json: @relationship, status: 200
  end

  def create
    relationship = Relationship.new(relationship_params)
    if relationship.save
      render json: relationship, status: 201
    else
      render json: {errors: relationship.errors.full_messages}
    end
  end

  def destroy
    @relationship.destroy
    render json: {message:"Zap! relationship deleted"}
  end

  private

  def relationship_params
    params.permit(:followed_id, :follower_id)
  end

  def set_relationship
    @relationship = Relationship.find(params[:id])
  end

end
