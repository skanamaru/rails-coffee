class BoardController < ApplicationController
    def index
        # @drink_counts_users = DrinkCount.left_joins(:user).select('drink_counts.*,users.*,sum(drink_counts.count) as dcount').group(:user_id).order(:user_id)
        # @drink_counts_users = DrinkCount.select('user_id,count() as dcount').group(:user_id).order(:user_id).includes(:user)
        # @users_drink_counts = User.left_joins(:drink_counts).where("date(drink_counts.created_at) = ?",Time.now.strftime('%Y-%m-%d')).select('users.*, count(drink_counts.id) as dcount').group('users.id').order('users.name')
        today = Time.now.strftime('%Y-%m-%d')
        @users_drink_counts = User.find_by_sql(["select users.*, count(B.id) as dcount from users left join (select * from drink_counts where date(drink_counts.created_at) = ? ) B on users.id = B.user_id group by users.id",today])
    end

end
