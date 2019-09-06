class SearchController < ApplicationController

    def index
        @heroines = []
        Heroine.all.each do |heroine|
            if heroine.super_name == params[:super_name]
                @heroines << heroine
            end
        end
        return @heroines
    end

end