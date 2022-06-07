class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @teams = Team.all

    @markers = @teams.geocoded.map do |team|
      {
        lat: team.latitude,
        lng: team.longitude,
        info_window: render_to_string(partial: "shared/info_window", locals: { team: team }),
      }
    end
  end
end
