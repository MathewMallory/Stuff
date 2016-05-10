class PokemonsController < InheritedResources::Base

  private

    def pokemon_params
      params.require(:pokemon).permit(:health, :attack, :defense, :special_attack, :special_defense, :speed, :title, :link)
    end
end

