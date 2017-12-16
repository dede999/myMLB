require 'test_helper'

class TeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team = teams(:one)
  end

  test "should get index" do
    get teams_url
    assert_response :success
  end

  test "should get new" do
    get new_team_url
    assert_response :success
  end

  test "should create team" do
    assert_difference('Team.count') do
      post teams_url, params: { team: { abr: @team.abr, al: @team.al, avg: @team.avg, aw: @team.aw, championships: @team.championships, diff: @team.diff, division: @team.division, hl: @team.hl, hw: @team.hw, loss: @team.loss, name: @team.name, pa: @team.pa, pennants: @team.pennants, pf: @team.pf, playoffs: @team.playoffs, win: @team.win } }
    end

    assert_redirected_to team_url(Team.last)
  end

  test "should show team" do
    get team_url(@team)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_url(@team)
    assert_response :success
  end

  test "should update team" do
    patch team_url(@team), params: { team: { abr: @team.abr, al: @team.al, avg: @team.avg, aw: @team.aw, championships: @team.championships, diff: @team.diff, division: @team.division, hl: @team.hl, hw: @team.hw, loss: @team.loss, name: @team.name, pa: @team.pa, pennants: @team.pennants, pf: @team.pf, playoffs: @team.playoffs, win: @team.win } }
    assert_redirected_to team_url(@team)
  end

  test "should destroy team" do
    assert_difference('Team.count', -1) do
      delete team_url(@team)
    end

    assert_redirected_to teams_url
  end
end
