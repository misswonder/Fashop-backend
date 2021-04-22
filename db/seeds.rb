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


u1 = User.create!(name: "Yvonne", age: 25, email: "yvonne@gmail.com", password: "12345")
u2 = User.create!(name: "Michelle", age: 21, email: "michelle@gmail.com", password: "yuiop")
u3 = User.create!(name: "Emily", age: 30, email: "emily@gmail.com", password: "asdfg")
u4 = User.create!(name: "Ashley", age: 18, email: "Ashley@gmail.com", password: "67890")
u5 = User.create!(name: "Sarah", age: 27, email: "sarah@gmail.com", password: "qwert")
u6 = User.create!(name: "Zoe", age: 35, email: "zoe@gmail.com", password: "zxcvb")


p1 = Product.create!(name: "LINEN BLEND MIDI DRESS", description: "DRESS MADE OF LINEN BLEND FABRIC. STRAIGHT NECK WITH CROSSED ELASTIC STRAPS AT BACK. BACK HIDDEN IN-SEAM ZIP CLOSURE.", image: "https://static.zara.net/photos///2021/V/0/1/p/8342/146/251/2/w/1280/8342146251_1_1_1.jpg?ts=1616086368863", color: "White", size: "L", price: 49.90)
p2 = Product.create!(name: "STRAPPY LINEN BLEND JUMPSUIT DRESS", description: "JUMPSUIT DRESS MADE OF LINEN BLEND FABRIC. STRAIGHT NECKLINE AND ADJUSTABLE THIN STRAPS. SMOCKED ELASTIC FABRIC DETAIL AT BACK. INTERIOR LINING. HIDDEN IN-SEAM SIDE ZIP CLOSURE.", image: "https://static.zara.net/photos///2021/V/0/1/p/4688/100/520/2/w/2880/4688100520_1_1_1.jpg?ts=1616431517145", color: "Green", size: "XS", price: 39.90)
p3 = Product.create!(name: "POPLIN MIDI DRESS", description: "STRAIGHT NECK DRESS WITH WIDE STRAPS. ELASTIC SMOCKED FABRIC DETAIL. FLOUNCED HEM.", image: "https://static.zara.net/photos///2021/V/0/1/p/0881/112/620/2/w/1280/0881112620_1_1_1.jpg?ts=1615913378053", color: "Pink", size: "XL", price: 49.90)
p4 = Product.create!(name: "LINEN BLEND PRINTED CROP TOP", description: "TOP MADE OF LINEN BLEND FABRIC WITH V-NECK AND STRAPS. SMOCKED ELASTIC FABRIC DETAIL AT BACK. FRONT DOUBLE BREASTED BUTTONED CLOSURE.", image: "https://static.zara.net/photos///2021/V/0/1/p/2671/662/687/2/w/1280/2671662687_1_1_1.jpg?ts=1615545752175", color: "Pink", size: "M", price: 39.90)
p5 = Product.create!(name: "LINEN BLEND FLORAL PRINT SKIRT", description: "HIGH WAISTED MINI SKIRT MADE OF LINEN BLEND FABRIC. FRONT SLITS. HIDDEN IN-SEAM SIDE ZIP CLOSURE.", image: "https://static.zara.net/photos///2021/V/0/1/p/2699/663/711/2/w/1280/2699663711_1_1_1.jpg?ts=1615545775391", color: "Sand", size: "S", price: 35.90)
p6 = Product.create!(name: "GINGHAM CROP TOP", description: "ROUND NECK TOP WITH WIDE ELASTIC STRAPS.", image: "https://static.zara.net/photos///2021/V/0/1/p/4661/010/511/2/w/1280/4661010511_1_1_1.jpg?ts=1615545779680", color: "Sand", size: "M", price: 35.90)
p7 = Product.create!(name: "LINEN CROP TOP", description: "CROP TOP MADE OF 100% LINEN FABRIC. STRAIGHT NECKLINE WITH WIDE STRAPS WITH SELF TIES.", image: "https://static.zara.net/photos///2021/V/0/1/p/4043/092/251/2/w/1280/4043092251_1_1_1.jpg?ts=1617897828507", color: "White", size: "S", price: 39.90)
p8 = Product.create!(name: "LONG LINEN BLOUSE", description: "LONG BLOUSE MADE OF LINEN. ROUND NECK AND SLEEVELESS DESIGN WITH WIDE ARM HOLES. ASYMMETRIC HEM. FRONT CLOSURE WITH TONAL BUTTONS.", image: "https://static.zara.net/photos///2021/V/0/1/p/4437/091/800/2/w/2880/4437091800_1_1_1.jpg?ts=1617894864571", color: "Black", size: "L", price: 69.90)
p9 = Product.create!(name: "PRINTED SHIRT DRESS", description: "SHIRT DRESS WITH ROUND HIGH COLLAR, LONG SLEEVES, AND CUFFS. TIED SELF BELT. FRONT BUTTON CLOSURE.", image: "https://static.zara.net/photos///2021/V/0/1/p/2725/082/500/2/w/2880/2725082500_1_1_1.jpg?ts=1617894876010", color: "Green", size: "M", price: 69.90)
p10 = Product.create!(name: "GINGHAM MINI FLARE PANTS", description: "HIGH-WAISTED PANTS WITH FRONT FALSE WELT POCKETS. FLARED LEGS. FRONT ZIP AND METAL HOOK CLOSURE.", image: "https://static.zara.net/photos///2021/V/0/1/p/2505/645/080/2/w/1280/2505645080_2_1_1.jpg?ts=1618833736955", color: "Blue", size: "L", price: 39.90)
p11 = Product.create!(name: "DENIM SKORT", description: "HIGH WAISTED SKORT WITH FIVE POCKETS. WASHED EFFECT. FRONT ZIP AND METAL BUTTON CLOSURE.", image: "https://static.zara.net/photos///2021/V/0/1/p/5252/007/406/4/w/1440/5252007406_1_1_1.jpg?ts=1618850064490", color: "Blue", size: "M", price: 35.90)
p12 = Product.create!(name: "FLORAL PRINT SHORTS", description: "HIGH-WAISTED SHORTS WITH SIDE POCKETS. SELF BELT WITH LINED BUCKLE. FRONT ZIP, METAL HOOK, AND INSIDE BUTTON CLOSURE.", image: "https://static.zara.net/photos///2021/V/0/1/p/4661/170/080/2/w/2880/4661170080_1_1_1.jpg?ts=1618831594324", color: "Blue", size: "S", price: 35.90)
p13 = Product.create!(name: "DOTTED SKORT", description: "HIGH-WAISTED SKORT. RUFFLED HEM. SIDE HIDDEN IN-SEAM ZIP CLOSURE.", image: "https://static.zara.net/photos///2021/V/0/1/p/7385/567/537/3/w/2880/7385567537_1_1_1.jpg?ts=1618845092631", color: "Mint", size: "XS", price: 35.90)
p14 = Product.create!(name: "SOLID COLOR OVERSHIRT", description: "OVERSHIRT MADE OF 100% COTTON. LAPEL COLLAR, LONG SLEEVES, DROPPED SHOULDER, AND CUFFS. FRONT PATCH POCKET. SIDE VENTS AT HEM. FRONT CLOSURE WITH MATCHING BUTTONS.", image: "https://static.zara.net/photos///2021/V/0/1/p/8197/705/636/3/w/2880/8197705636_1_1_1.jpg?ts=1618845092446", color: "Pink", size: "XL", price: 49.90)


c1 = CartItem.create!(user_id: u1.id, product_id: p1.id, quantity: 1)
c2 = CartItem.create!(user_id: u2.id, product_id: p2.id, quantity: 1)
c3 = CartItem.create!(user_id: u3.id, product_id: p3.id, quantity: 1)
c4 = CartItem.create!(user_id: u4.id, product_id: p4.id, quantity: 1)
c5 = CartItem.create!(user_id: u5.id, product_id: p5.id, quantity: 1)
c6 = CartItem.create!(user_id: u6.id, product_id: p6.id, quantity: 1)


o1 = Order.create!(user_id: u1.id, ordered_at: DateTime.parse("2021/03/15 21:00:00 EST"))
o2 = Order.create!(user_id: u2.id, ordered_at: DateTime.parse("2021/03/20 14:30:00 EST"))
o3 = Order.create!(user_id: u3.id, ordered_at: DateTime.parse("2021/02/10 10:40:00 EST"))
o4 = Order.create!(user_id: u4.id, ordered_at: DateTime.parse("2021/01/12 19:20:00 EST"))
o5 = Order.create!(user_id: u5.id, ordered_at: DateTime.parse("2021/04/02 15:10:00 EST"))
o6 = Order.create!(user_id: u6.id, ordered_at: DateTime.parse("2021/04/05 12:50:00 EST"))

oi1 = o1.order_items.create!(product_id: p1.id, quantity: 1)
oi2 = o2.order_items.create!(product_id: p2.id, quantity: 1)
oi3 = o3.order_items.create!(product_id: p3.id, quantity: 1)
oi4 = o4.order_items.create!(product_id: p4.id, quantity: 1)
oi5 = o5.order_items.create!(product_id: p5.id, quantity: 1)
oi6 = o6.order_items.create!(product_id: p6.id, quantity: 1)

