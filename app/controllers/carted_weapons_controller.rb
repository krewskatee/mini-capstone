class CartedWeaponsController < ApplicationController

  def index
    if current_user && current_user.current_cart.any?
      @carted_weapons = current_user.current_cart
    else
      flash[:warning] = "You have no items in your cart. Why don't you find something cool first?"
      redirect_to "/"
    end
  end

  def create
    product = Weapon.find(params[:weapon_id])
    cart = CartedWeapon.new(
                    user_id: current_user.id,
                    weapon_id: product.id,
                    quantity: params[:quantity],
                    status: "carted"
                    )
    if cart.save
      flash[:success] = "Successfully added to cart."
      redirect_to "/checkout"
    end
  end

  def destroy
    carted_weapon = CartedWeapon.find(params[:id])
    carted_weapon.update(status: "removed")
    flash[:success] = "Weapon Removed"
    redirect_to "/checkout"
  end

end
