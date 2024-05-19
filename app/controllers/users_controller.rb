class UsersController < ApplicationController
  def active_tariff
    user = User.find(1)
    user.update_tariff
    user.done!
  end

  private

    # # Only allow a list of trusted parameters through.
    # def user_params
    #   params.require(:user).permit(:)
    # end
end