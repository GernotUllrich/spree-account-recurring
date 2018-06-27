class AddStripeCustomerIdToSpreeUsers < ActiveRecord::Migration
  def change
    add_column :users, :stripe_customer_id, :string
    remove_column :spree_subscriptions, :card_customer_token
  end
end
