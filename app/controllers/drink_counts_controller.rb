class DrinkCountsController < ApplicationController
    def index
        @users = User.includes(:drink_counts).all.order(:name)
    end

    def create
        # render plain: params[:user_id].inspect
        user_id = params[:user_id]
        @user_id = params[:user_id]
        volume_id = params[:volume_id]
        strength_id = params[:strength_id]
        type_id = params[:type_id]
        # render plain: params[:volume_id].inspect
        
        # DrinkCount.create(user_id: user_id, count: 1)
        DrinkCount.create(user_id: user_id, count: 1, volume_id: volume_id, strength_id: strength_id, type_id: type_id)
        today = Time.now.strftime('%Y-%m-%d')
        sql = "select A.*, count(B.id) as dcount from (select * from users where users.id = ?) A left join (select * from drink_counts where date(drink_counts.created_at) = ? ) B on A.id = B.user_id group by A.id"
        @user_drink_count = User.find_by_sql([sql, user_id, today])

    end
    
end
