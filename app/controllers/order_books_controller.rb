class OrderBooksController < ApplicationController
  before_action :set_order_book, only: %i[destroy]

  def index
    @order_books = OrderBook.all
    @order_book = OrderBook.new
  end

  def create
    @order_books = OrderBook.all
    @order_book = OrderBook.new(order_book_params)

    if @order_book.save
      redirect_to order_books_path, notice: 'Order book was successfully created.'
    else
      render :index
    end
  end

  def destroy
    @order_book.destroy
    redirect_to order_books_url, notice: 'Order book was successfully destroyed.'
  end

  private
    def set_order_book
      @order_book = OrderBook.find(params[:id])
    end

    def order_book_params
      params.require(:order_book).permit(:bond_type, :title, :author, :edition, :issn, :year_publication, :publishing_company)
    end
end
