class ProductosController < ApplicationController
    def index
        @products = Producto.all
    end

    def new
        @product = Producto.new
    end

    def create
        @product = Producto.new(product_params)
        if @product.save
            redirect_to root_path
        else
            render :new
        end
    end

    def edit
        @product = Producto.find(params[:id])
    end

    def update
        @product = Producto.find(params[:id])
        if @product.update(product_params)
            redirect_to root_path
        else
            render :edit
        end
    end

    def destroy
        @product = Producto.find(params[:id])
        @product.destroy
        redirect_to root_path
    end

    private
        def product_params
            params.require(:producto).permit(:name, :description, :price)
        end
end
