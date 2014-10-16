#encoding: utf-8
class  PasswordController < ApplicationController

    def index

    end

    def get_password
        pass = Passgen.new.create_pass;
        render json: { succces: true, password: pass  }
    end

end