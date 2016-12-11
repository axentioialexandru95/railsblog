class AuthorController < BlogController
	protect_from_forgery with: :exception
end