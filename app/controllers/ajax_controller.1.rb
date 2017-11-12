class BoardController < ApplicationController
    def dcount
        today = Time.now.strftime('%Y-%m-%d')
        @dcount = User.find_by_sql(["select users.*, count(B.id) as dcount from users where users.id = ? left join (select * from drink_counts where date(drink_counts.created_at) = ? ) B on users.id = B.user_id group by users.id",params[:user_id], today])
    end
end
