class DrinkCountsController < ApplicationController
    def index
        @users = User.includes(:drink_counts).all.order(:name)
    end

    def create
        # render plain: params[:user_id].inspect
        user_id = params[:user_id]
        @user_id = params[:user_id]
        
        DrinkCount.create(user_id: user_id, count: 1)
        today = Time.now.strftime('%Y-%m-%d')
        sql = "select A.*, count(B.id) as dcount from (select * from users where users.id = ?) A left join (select * from drink_counts where date(drink_counts.created_at) = ? ) B on A.id = B.user_id group by A.id"
        @user_drink_count = User.find_by_sql([sql, user_id, today])

        # redirect_to board_path
    end
    
end
