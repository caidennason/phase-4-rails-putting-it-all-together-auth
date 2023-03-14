class RecipeController < ApplicationController

    def index
        user = User.find_by(id: session[:user_id])
        if user
            recipes = user.recipes
            render json: recipes, status: :created
        else
            render json: {errors: ["Not authorized"]}, status: :unauthorized
        end
    end

    def create
        user = User.find_by(id: session[:user_id])
        if user 
            recipe = user.recipes.create(recipe_params)
            if recipe.valid?
                render json: recipe, status: :created 
            else
                render json: { errors: ["Not long enough"] }, status: :unprocessable_entity
            end
        else
            render json: {errors: ["Not authorized"]}, status: :unauthorized
        end
    end

    private

    def recipe_params
        params.permit(:title, :instructions, :minutes_to_complete)
    end

end