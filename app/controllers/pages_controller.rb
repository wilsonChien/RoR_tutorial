class PagesController < ApplicationController
	# 當收到 GET /home 或 GET / 會執行
	def home
		render 'pages/home'
		# render 'home'
		# 省略設定
	end

	# 當收到 GET /about/me 會執行
	def about
		render 'pages/about'
	end

	# 如果不放入任何的def網站仍可運作
end