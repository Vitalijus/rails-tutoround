class EmailsController < ApplicationController
	def create
		@user = User.find(params[:user_id])
		@email = @user.emails.create(email_params)

		if @email.save
			EmailMailer.request(@email).deliver
			redirect_to :back
		else 
			redirect_to :back
		end
  	end

  	private

	# Never trust parameters from the scary internet, only allow the white list through.
    def email_params
      params.require(:email).permit(:email, :name, :message )
    end
end
