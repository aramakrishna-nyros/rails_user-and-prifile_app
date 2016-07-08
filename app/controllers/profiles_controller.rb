class ProfilesController < ApplicationController
	before_filter :authenticate_user!
	before_action :set_profile, only: [:show, :edit, :update, :destroy]
	
	def index
		if user_signed_in?
			@profiles = Profile.all
		end 
	end

	def show
		@profiles = Profile.all
	end
	
	def edit
		@profile = Profile.update
	end

	def new
		@profile = Profile.new
	end

	def create
		@profile = Profile.new(profile_params)

		respond_to do |prfl|
			if @profile.save
				prfl.html{ redirect_to @profile, notice: 'profile was successfully created' }
				prfl.json{ render :show, status: :created, location: @profile }
			else
				prfl.html{ render :new }
				prfl.json{ render json: @profile.errors, status: :unprocessible_entity }
			end
		end
	end

	def update
	    respond_to do |prfl|
	      if @profile.update(profile_params)
	        prfl.html { redirect_to @profile, notice: 'profile was successfully updated.' }
	        prfl.json { render :show, status: :ok, location: @profile }
	      else
	        prfl.html { render :edit }
	        prfl.json { render json: @profile.errors, status: :unprocessable_entity }
	      end
	    end
  	end

	private
	def set_profile
      @profile = Profile.find(params[:id])
      @profile = Profile.all
    end

	def profile_params
      params.require(:profile).permit( :user_id, :name, :gender, :dob, :profession, :mobile_no)
    end

end
