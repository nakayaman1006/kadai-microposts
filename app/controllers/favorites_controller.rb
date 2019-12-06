class FavoritesController < ApplicationController
  def create
    favpost = Micropost.find(params[:micropost_id])
    current_user.favorite(favpost)
    flash[:success] = 'お気に入りに追加しました。'
    redirect_back(fallback_location: root_path)
    
  end

  def destroy
    favpost = Micropost.find(params[:micropost_id])
    current_user.unfavorite(favpost)
    flash[:success] = 'お気に入りから削除しました。'
    redirect_back(fallback_location: root_path)
  end
end
