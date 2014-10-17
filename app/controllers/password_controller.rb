#encoding: utf-8
class  PasswordController < ApplicationController

    def index
    end

    def get_password
        render json: { succces: true, password: Passgen.new.create_pass_of_syllables }
    end

end