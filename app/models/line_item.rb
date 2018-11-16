class LineItem < ActiveRecord::Base
  belongs_to :product, optional: true
  belongs_to :cart, optional: true
  belongs_to :order, optional: true

  def total_price
    product.price * quantity
  end
end