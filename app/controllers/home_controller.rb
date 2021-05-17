class HomeController < ApplicationController
    def index
    end

    def about
    end

    def help
    end

    def faq
    end

    def add_company
    end

    def search
        redirect_back(fallback_location: home_path) if params[:query].blank?
        @query = params[:query]
        @companies = Owner.search(@query)
    end
end