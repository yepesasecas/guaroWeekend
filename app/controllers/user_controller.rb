class UserController < ApplicationController
  def create
  	@user = User.new(user_params)
  	@user.save
  	respond_to do |format|
  		if @user.save
  			format.html { redirect_to root_path, notice: '¡TE INSCRIBISTE EXITOSAMENTE! Recibiras noticias nuestras proximamente.' }
  		else
  			format.html { redirect_to root_path, alert: 'NO FUISTE INSCRITO! Revisa tu información! Solo un email por persona!' }
  		end
  	end
  end

    def user_params
    params.require(:user).permit(:name, :email, :description)
  end
end
