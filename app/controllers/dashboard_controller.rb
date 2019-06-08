class DashboardController < CharactersController
  before_action :authenticate_user!
  def index
  end

  def character
  end

  def map
  end

  def inventory
  end

  def ability
  end

  def adventure
  end

  def spellbook
  end

  def masterscreen
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_character
    @character = Character.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def character_params
    params.require(:character).permit(:name, :char_name, :background, :faction_id, :profession_id, :alignment_id, :user_id, :adventure_id, :experience, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :armor_class, :initiative, :hit_points)
  end
end
