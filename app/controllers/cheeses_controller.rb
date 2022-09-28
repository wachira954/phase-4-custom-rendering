class CheesesController < ApplicationController

  # GET /cheeses
  def index
    cheeses = Cheese.all
    render json: cheeses, except: [:created_at, :updated_at], methods: [:summary]
  end

  # GET /cheeses/:id
  # def show
    # def show
    #   cheese = Cheese.find_by(id: params[:id])
    #   if cheese
    #     render json: cheese, except: [:created_at, :updated_at], methods: [:summary]
    #   else
    #     # status: :not_found will produce a 404 status code
    #     render json: { error: 'Cheese not found' }, status: :not_found
    #   end
    # end
  #   cheese = Cheese.find_by(id: params[:id])
  #   if cheese
  #     render json: cheese, except: [:created_at, :updated_at], methods: [:summary]
  #   else
  #     render json: { error: 'Cheese not found' }
  #   end
  # end
#     cheese = Cheese.find_by(id: params[:id])
#   render json: cheese, except: [:created_at, :updated_at], methods: [:summary]
#   end
# end
#     cheese = Cheese.find_by(id: params[:id])
#     render json: {
#       id: cheese.id,
#       name: cheese.name,
#       price: cheese.price,
#       is_best_seller: cheese.is_best_seller
#     }
#   end
# end
def show
  cheese = Cheese.find_by(id: params[:id])
  render json: {
    id: cheese.id,
    name: cheese.name,
    price: cheese.price,
    is_best_seller: cheese.is_best_seller
  }
end

end
