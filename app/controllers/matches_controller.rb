class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :edit, :update, :destroy, :simulate]

  # GET /matches
  # GET /matches.json
  def index
    @matches = Match.all
  end

  # GET /matches/1
  # GET /matches/1.json
  def show
  end

  def simulate
    h = Team.find_by_name(@match.home)
    a = Team.find_by_name(@match.away)
    home = 0
    away = 0
    while home == away
      home += Random.rand(0..8)
      away += Random.rand(0..8)
    end
    h.increment!(:pf, home)
    h.increment!(:pa, away)
    a.increment!(:pf, away)
    a.increment!(:pa, home)
    if home > away # hw, al
      h.increment!(:hw)
      h.increment!(:win)
      a.increment!(:al)
      a.increment!(:loss)
    else # hl, aw
      a.increment!(:aw)
      a.increment!(:win)
      h.increment!(:hl)
      h.increment!(:loss)
    end
    @match.h_score = home
    @match.a_score = away
    h.save!
    a.save!
    @match.save!
  end

  # GET /matches/new
  def new
    @match = Match.new
  end

  # GET /matches/1/edit
  def edit
  end

  # POST /matches
  # POST /matches.json
  def create
    @match = Match.new(match_params)

    respond_to do |format|
      if @match.save
        format.html { redirect_to @match, notice: 'Match was successfully created.' }
        format.json { render :show, status: :created, location: @match }
      else
        format.html { render :new }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matches/1
  # PATCH/PUT /matches/1.json
  def update
    respond_to do |format|
      if @match.update(match_params)
        format.html { redirect_to @match, notice: 'Match was successfully updated.' }
        format.json { render :show, status: :ok, location: @match }
      else
        format.html { render :edit }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matches/1
  # DELETE /matches/1.json
  def destroy
    @match.destroy
    respond_to do |format|
      format.html { redirect_to matches_url, notice: 'Match was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match
      @match = Match.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_params
      params.require(:match).permit(:away, :a_score, :home, :h_score, :week)
    end
end
