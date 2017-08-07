require "letter_changer.rb"

class CiphersController < ApplicationController

  def encryption
    @sentence = params[:sentence].upcase
    @encrypted_sentence = encrypt(@sentence)
  end

  def home

  end

  def team
    @members = ["Amira", "Mohamed", "Fernando", "Charlie", "Kerryn", "Finn"]
  end


end
