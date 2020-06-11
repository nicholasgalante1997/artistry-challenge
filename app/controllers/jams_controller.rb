class JamsController < ApplicationController 

    def index
        @jams = Jam.all 
    end 

    def show 
        @jam = Jam.find(params[:id]) 
    end

    def new
        @jam = Jam.new 
        @artists = Artist.all 
        @instruments = Instrument.all 
    end 

    def create
        jam = Jam.create(jam_params)
        redirect_to artist_path(jam.artist)
    end 

    private 

    #STRONG PARAMS 
    def jam_params
        params.require(:jam).permit(:artist_id, :instrument_id, :length)
    end 

end 