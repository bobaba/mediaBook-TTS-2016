class FriendshipsController < ApplicationController
	before_action :set_user, only: [:create]
	before_action :set_friendship, only: [:destroy, :accept]
	before_action :authenticate_user!

	def create
		@friendship = current_user.request_friendship(@user)

		respond_to do |format|
			format.html {redirect_to users_path, notice: "Friendship Requested!"}
		end
	end

	def accept
		@friendship.accept_friendship
		@friendship.create_activity key: "friendship.accepted", owner: @friendship.user, recipient: @friendship.friend
		@friendship.create_activity key: "friendship.accepted", owner: @friendship.friend, recipient: @friendship.user

		respond_to do |format|
			format.html {redirect_to users_path, notice: "Congrats, new Friends!"}
		end
	end

	def destroy
		@friendship.destroy

		respond_to do |format|
			format.html {redirect_to users_path, notice: "Bad Friend, eh?"}
		end
	end

	private

	def set_friendship
		@friendship = Friendship.find(params[:id])
	end

	def set_user
		@user = User.find(params[:user_id])
	end


end