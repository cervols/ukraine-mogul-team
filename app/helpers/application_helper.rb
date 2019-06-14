module ApplicationHelper
  def cart_count_over_one
    if @cart.positions.count > 0
      "<span class='tag text-dark'>#{@cart.positions.count}</span>".html_safe
    end
  end

  def cart_has_items?
    @cart.positions.count > 0
  end
end
