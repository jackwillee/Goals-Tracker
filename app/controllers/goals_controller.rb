class GoalsController < ApplicationController

    def index
        @goals = Goal.all

    end 

    def create
        @goal = Goal.new(goal_params)
    
        if @goal.save
          redirect_to root_path
        else
          render :new, status: :unprocessable_entity
        end
      end

      def new
        @goal = Goal.new


      end 

      private
      def goal_params
        params.require(:goal).permit(:body)
      end
end
