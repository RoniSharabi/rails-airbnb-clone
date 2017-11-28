class PagesController < ApplicationController

  def home
    @alibi = Alibi.new
    @alibis = Alibi.all
  end

end
