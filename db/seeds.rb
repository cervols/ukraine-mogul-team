# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(
  name: "Andy Cowboy",
  email: "mail@mail.com",
  password: "qwerty",
  password_confirmation: "qwerty"
)
user2 = User.create(
  name: "Jonny Megan",
  email: "mail2@mail.com",
  password: "qwerty",
  password_confirmation: "qwerty"
)

Item.create!([{
  title: "Wilson Official NFL Game Ball",
  brand: "Wilson",
  description: "Throughout American sports history, no other brand has been partnered with a league longer than Wilson and the NFL. Not only has every point scored in the NFL been with a Wilson Football, but every Wilson NFL game ball has been handcrafted in Ada, OH by skilled craftsmen and women for decades.
The Duke NFL football was named in honor of the games pioneering legend and NY Giants owner, Wellington Mara. Back when Mara was a young boy taking in the game from the sidelines, the Giants players dubbed him The Duke and years later, the NFL game ball took on this nickname too.",
  condition: "Excellent",
  color: "Brown",
  price: 99.99,
  image: Rails.root.join("app/assets/images/item1.jpg").open,
  user_id: user.id
},
{
  title: "Nike Dri-FIT Icon Mens Basketball Short",
  brand: "Nike",
  description: "WANT TO PLAY.
The Nike Dri-FIT Icon Men's Basketball Shorts offer effortless mobility and unstoppable comfort on or off the court. They're made from a breathable, jacquard-knit fabric and are built to provide coverage, playability and style.",
  condition: "Used",
  color: "Blue",
  price: 30,
  image: Rails.root.join("app/assets/images/item2.jpg").open,
  user_id: user.id
},
{
  title: "Champion C Life Mens Yarn Dye Pullover Hoodie",
  brand: "Champion",
  description: "Champion C Life Mens Yarn Dye Pullover Hoodie",
  condition: "New",
  color: "White",
  price: 245,
  image: Rails.root.join("app/assets/images/item3.jpg").open,
  user_id: user.id
},
{
  title: "Nike Varsity Compete TR 2 Mens Training Shoe",
  brand: "Nike",
  description: "TRACTION, STABILITY AND SPEED FOR ALL-PURPOSE TRAINING. Made for heavy lifting, agility drills and explosive movements, the Nike Varsity Compete TR 2 Men's Training Shoe delivers stability and traction. The 2 midfoot straps provide containment for a design that's as versatile as your workout.",
  condition: "New",
  color: "Clear",
  price: 69.99,
  image: Rails.root.join("app/assets/images/item4.jpg").open,
  user_id: user.id
},
{
  title: "Ravens Adult 2018 Sideline Cold Weather Knit Hat",
  brand: "Baltimore",
  description: "Brave the cold weather and root your team on with the Baltimore Ravens 2018 NFL Cold Weather Touchdown Knit. This poly yarn knit is designed with fleece lining and thermal properties so you can ENDURE the extreme weather. Featuring the Ravens logo at the front, you can be ready to show your team pride no matter the conditions. Made of 100% Acrylic knit",
  condition: "Used",
  color: "Red",
  price: 599,
  image: Rails.root.join("app/assets/images/item5.jpg").open,
  user_id: user.id
},
{
  title: "24 Inch Table Air Hockey",
  brand: "Ambassador",
  description: "Glide the puck effortlessly on a cushion of air! Made from quality wood making it a nice addition to your home. Individual manual scoreboards let each player keep track of goals scored. Features new safe-lock corner system, allowing the table to snap together without the use of dangerous screws!",
  condition: "Used",
  color: "Yellow",
  price: 799,
  image: Rails.root.join("app/assets/images/item6.jpg").open,
  user_id: user.id
},
{
  title: "Americana Palm Print Mens Swim Short",
  brand: "BHPC",
  description: "Watch all your favorite players face off in the 2019 MLB All-Star Game. Long after this awesome game is over, you can remember it fondly with this Players T-Shirt. This DKNY Sport gear will be sure to be a favorite in your closet. Add it to your collection today.",
  condition: "Excellent",
  color: "Yellow",
  price: 64,
  image: Rails.root.join("app/assets/images/item7.jpg").open,
  user_id: user2.id
},
{
  title: "Greenworks 21-Inch 40V Self Propelled Mower 5Ah ",
  brand: "Adidas",
  description: "Self-Propelled Mower; 21-inch Steel Cutting Deck. Brushless Motor Technology. 3 Year Tool / Battery Limited Warranty",
  condition: "Used",
  color: "Black, Grey",
  price: 100.99,
  image: Rails.root.join("app/assets/images/item8.jpg").open,
  user_id: user2.id
},
{
  title: "Reebook Varsity Compete TR 2 Mens Training Shoe",
  brand: "Nike",
  description: "TRACTION, STABILITY AND SPEED FOR ALL-PURPOSE TRAINING. Made for heavy lifting, agility drills and explosive movements, the Nike Varsity Compete TR 2 Men's Training Shoe delivers stability and traction. The 2 midfoot straps provide containment for a design that's as versatile as your workout.",
  condition: "New",
  color: "Clear",
  price: 122,
  image: Rails.root.join("app/assets/images/item9.jpg").open,
  user_id: user.id
},
{
  title: "Asics Adult 2018 Sideline Cold Weather Knit Hat",
  brand: "Baltimore",
  description: "Brave the cold weather and root your team on with the Baltimore Ravens 2018 NFL Cold Weather Touchdown Knit. This poly yarn knit is designed with fleece lining and thermal properties so you can ENDURE the extreme weather. Featuring the Ravens logo at the front, you can be ready to show your team pride no matter the conditions. Made of 100% Acrylic knit",
  condition: "New",
  color: "Red",
  price: 55,
  image: Rails.root.join("app/assets/images/item10.jpg").open,
  user_id: user2.id
}])
