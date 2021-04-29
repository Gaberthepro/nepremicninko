class PublicController < ApplicationController
  def main

    @nepremicnines = Nepremicnine.latest
  end
end
