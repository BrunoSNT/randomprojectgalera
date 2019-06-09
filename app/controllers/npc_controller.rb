class NpcController < ApplicationController
    before_action :set_npc, only: [:show, :edit, :update, :destroy]

    # GET /npcs
    # GET /npcs.json
    def index
      @npcs = npc.all
    end
  
    # GET /npcs/1
    # GET /npcs/1.json
    def show
      @inventory = @npc.inventory
      @items = Item.all
    end
  
    # GET /npcs/new
    def new
      @npc = npc.new
    end
  
    # GET /npcs/1/edit
    def edit
    end
  
    # POST /npcs
    # POST /npcs.json
    def create
      @npc = npc.new(npc_params)
  
      respond_to do |format|
        if @npc.save
          format.html { redirect_to @npc, notice: 'npc was successfully created.' }
          format.json { render :show, status: :created, location: @npc }
        else
          format.html { render :new }
          format.json { render json: @npc.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /npcs/1
    # PATCH/PUT /npcs/1.json
    def update
      respond_to do |format|
        if @npc.update(npc_params)
          format.html { redirect_to @npc, notice: 'npc was successfully updated.' }
          format.json { render :show, status: :ok, location: @npc }
        else
          format.html { render :edit }
          format.json { render json: @npc.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /characters/1
    # DELETE /characters/1.json
    def destroy
      @character.destroy
      respond_to do |format|
        format.html { redirect_to characters_url, notice: 'Character was successfully destroyed.' }
        format.json { head :no_content }
      end
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
