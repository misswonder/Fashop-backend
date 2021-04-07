# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CartItem.destroy_all
OrderItem.destroy_all
Order.destroy_all
User.destroy_all
Product.destroy_all


u1 = User.create!(name: "Yvonne", age: 21, email: "yvonne@gmail.com", password: "12345")
u2 = User.create!(name: "Michelle", age: 21, email: "michelle@gmail.com", password: "yuiop")
u3 = User.create!(name: "Emily", age: 30, email: "emily@gmail.com", password: "asdfg")
u4 = User.create!(name: "Ashley", age: 25, email: "Ashley@gmail.com", password: "67890")
u5 = User.create!(name: "Sarah", age: 27, email: "sarah@gmail.com", password: "qwert")
u6 = User.create!(name: "Zoe", age: 35, email: "zoe@gmail.com", password: "zxcvb")


p1 = Product.create!(name: "LINEN BLEND MIDI DRESS", description: "DRESS MADE OF LINEN BLEND FABRIC. STRAIGHT NECK WITH CROSSED ELASTIC STRAPS AT BACK. BACK HIDDEN IN-SEAM ZIP CLOSURE.", image: "https://static.zara.net/photos///2021/V/0/1/p/8342/146/251/2/w/1280/8342146251_1_1_1.jpg?ts=1616086368863", color: "Oyster White", size: "L", price: 49.90)
p2 = Product.create!(name: "STRAPPY LINEN BLEND JUMPSUIT DRESS", description: "JUMPSUIT DRESS MADE OF LINEN BLEND FABRIC. STRAIGHT NECKLINE AND ADJUSTABLE THIN STRAPS. SMOCKED ELASTIC FABRIC DETAIL AT BACK. INTERIOR LINING. HIDDEN IN-SEAM SIDE ZIP CLOSURE.", image: "https://static.zara.net/photos///2021/V/0/1/p/4688/100/520/2/w/2880/4688100520_1_1_1.jpg?ts=1616431517145", color: "Lime green", size: "XS", price: 39.90)
p3 = Product.create!(name: "POPLIN MIDI DRESS", description: "STRAIGHT NECK DRESS WITH WIDE STRAPS. ELASTIC SMOCKED FABRIC DETAIL. FLOUNCED HEM.", image: "https://static.zara.net/photos///2021/V/0/1/p/0881/112/620/2/w/1280/0881112620_1_1_1.jpg?ts=1615913378053", color: "Pink", size: "XL", price: 49.90)
p4 = Product.create!(name: "LINEN BLEND PRINTED CROP TOP", description: "TOP MADE OF LINEN BLEND FABRIC WITH V-NECK AND STRAPS. SMOCKED ELASTIC FABRIC DETAIL AT BACK. FRONT DOUBLE BREASTED BUTTONED CLOSURE.", image: "https://static.zara.net/photos///2021/V/0/1/p/2671/662/687/2/w/1280/2671662687_1_1_1.jpg?ts=1615545752175", color: "Pale pink", size: "M", price: 39.90)
p5 = Product.create!(name: "LINEN BLEND FLORAL PRINT SKIRT", description: "HIGH WAISTED MINI SKIRT MADE OF LINEN BLEND FABRIC. FRONT SLITS. HIDDEN IN-SEAM SIDE ZIP CLOSURE.", image: "https://static.zara.net/photos///2021/V/0/1/p/2699/663/711/2/w/1280/2699663711_1_1_1.jpg?ts=1615545775391", color: "Sand", size: "S", price: 35.90)
p6 = Product.create!(name: "GINGHAM CROP TOP", description: "ROUND NECK TOP WITH WIDE ELASTIC STRAPS.", image: "https://static.zara.net/photos///2021/V/0/1/p/4661/010/511/2/w/1280/4661010511_1_1_1.jpg?ts=1615545779680", color: "Sand", size: "M", price: 35.90)


c1 = CartItem.create!(user_id: u1.id, product_id: p1.id, quantity: 1)
c2 = CartItem.create!(user_id: u2.id, product_id: p2.id, quantity: 1)
c3 = CartItem.create!(user_id: u3.id, product_id: p3.id, quantity: 1)
c4 = CartItem.create!(user_id: u4.id, product_id: p4.id, quantity: 1)
c5 = CartItem.create!(user_id: u5.id, product_id: p5.id, quantity: 1)
c6 = CartItem.create!(user_id: u6.id, product_id: p6.id, quantity: 1)


o1 = Order.create!(user_id: u1.id, ordered_at: DateTime.parse("2021/03/15 21:00:00 EST"), total: 53.14)
o2 = Order.create!(user_id: u2.id, ordered_at: DateTime.parse("2021/03/20 14:30:00 EST"), total: 42.49)
o3 = Order.create!(user_id: u3.id, ordered_at: DateTime.parse("2021/02/10 10:40:00 EST"), total: 53.14)
o4 = Order.create!(user_id: u4.id, ordered_at: DateTime.parse("2021/01/12 19:20:00 EST"), total: 42.49)
o5 = Order.create!(user_id: u5.id, ordered_at: DateTime.parse("2021/04/02 15:10:00 EST"), total: 38.23)
o6 = Order.create!(user_id: u6.id, ordered_at: DateTime.parse("2021/04/05 12:50:00 EST"), total: 38.23)


oi1 = OrderItem.create!(order_id: o1.id, product_id: p1.id, quantity: 1, price: 49.90, subtotal: 49.90)
oi2 = OrderItem.create!(order_id: o2.id, product_id: p2.id, quantity: 1, price: 39.90, subtotal: 39.90)
oi3 = OrderItem.create!(order_id: o3.id, product_id: p3.id, quantity: 1, price: 49.90, subtotal: 49.90)
oi4 = OrderItem.create!(order_id: o4.id, product_id: p4.id, quantity: 1, price: 39.90, subtotal: 39.90)
oi5 = OrderItem.create!(order_id: o5.id, product_id: p5.id, quantity: 1, price: 35.90, subtotal: 35.90)
oi6 = OrderItem.create!(order_id: o6.id, product_id: p6.id, quantity: 1, price: 35.90, subtotal: 35.90)

