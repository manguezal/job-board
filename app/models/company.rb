class Company < ActiveRecord::Base
	EMAIL_REGEXP = 

	validates :name, :url, presence: true
	validates :email, presence: true,
						format: {with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/},
						uniqueness: true

	validates_confirmation_of :password
	# validates_presence_of :email, :name, :url
	# validates_format_of :email with: EMAIL_REGEXP
	# validates_uniqueness_of :email

end
