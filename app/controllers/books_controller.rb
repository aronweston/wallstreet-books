class BooksController < ApplicationController
     
    def search
        render :search
    end

    def show
        #Pass the title from the form into the request
        @title = params[:title]

        #Define the API endpoint
        @url = "https://www.googleapis.com/books/v1/volumes?q=title:#{@title}"

        #Call library on the URL
        @info = HTTParty.get @url

        #get the cover of the first book
        @book_cover = @info["items"].first["volumeInfo"]["imageLinks"]["thumbnail"]
        @book_title = @info["items"].first["volumeInfo"]["title"]
        @authors = @info["items"].first["volumeInfo"]["authors"]
        @date_published = @info["items"].first["volumeInfo"]["publishedDate"]
        @total_pages = @info["items"].first["volumeInfo"]["pageCount"]
        @description = @info["items"].first["volumeInfo"]["description"]

        render :show
    end

end