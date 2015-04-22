class PagesController < ApplicationController
  	# 當收到 GET /home 或 GET / 會執行
	def home
		# render 'pages/home'
		# render 'home'
		# 省略設定
	end

	# 當收到 GET /about/me 會執行
	def about
		#render 'pages/about'

		# 兩種方式取得 name 變數
		@name = "#{params[:first_name]} #{params[:last_name]}"  # => "大豆"
		#params['name']                                         # => "大豆"

		# render layout: 'admin'                                # 指定版型
		# render 'pages/about', layout: 'admin'                  # 仔細一點可以寫成這樣
	end

	# 如果不放入任何的def網站仍可運作

	# 訪問 GET /math 時會執行
	def math
		@numbers = (1..46).to_a.sample(6)
	end
end
