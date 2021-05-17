class KittensController < ApplicationController
    
      def index
        @Kittens = Kitten.all
      end
    
      def show
        @Kitten = Kitten.find(params[:id])
      end

      def new
        @Kitten = Kitten.new
      end
    
      def create
          @kitten = Kitten.new(kitten_params)
          if @kitten.save
            flash[:success] = "Object successfully created"
            redirect_to @kitten
          else
            flash[:error] = "Something went wrong"
            render 'new'
          end
      end
    
      def update
        @Kitten = Kitten.find(params[:id])
      end
    
      def edit
        @Kitten = Kitten.find(params[:id])
      end
    
      def destroy
        Kitten = Kitten.find(params[:id])
      end

      private

      def kitten_params
        params.require(:kitten).permit(:name, :age, :cuteness, :softness)
      end
end
