class CompaniesController < ApplicationController

	def show
		@company = Company.find(params[:id])
	end	

	def new
		@company = Company.new
	end

	def create
		@company = Company.new(company_params)

		if (@company.save)
			flash[:notice] = 'Empresa criada com sucesso!'
			redirect_to @company
		else
			render action: :new
		end
	end

	private 
	def company_params
		params.
		require(:company).
		permit(:email, :name, :url, :password, :password_confirmation)
	end

end