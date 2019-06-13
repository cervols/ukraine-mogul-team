class Cart < ApplicationRecord
  has_many :positions, dependent: :destroy

  def add_item(item)
    current_item = positions.find_by(item_id: item.id)

    if current_item
      current_item.increment(:quantity)
    else
      current_item = positions.build(item_id: item.id)
    end

    current_item
  end

  def total_price
    positions.to_a.sum { |item| item.total_price }
  end
end
