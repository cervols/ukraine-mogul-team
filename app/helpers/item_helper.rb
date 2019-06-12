module ItemHelper
  def item_author(item)
    user_signed_in? && current_user.id == item.user.id
  end
end
