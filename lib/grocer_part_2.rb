require 'pry'
require_relative './part_1_solution.rb'


def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  coupons.each do |coupon|
    coupon.each do |key, value|
      coupon_name = coupon[:item]
     
    if cart[coupon_name] && cart[coupon_name][:count] >= coupon[:num]
      if cart[coupon_name] = cart["#{coupon_name} W/COUPON"]
        cart["#{coupon_name} W/COUPON"][:count] += 1
       else
         cart["#{coupon_name} W/COUPON"] = {price: (coupon[:cost]/coupon[:num]), clearance: cart[coupon_name][:clearance], count: 1}
     end
    end
   end
  end
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
