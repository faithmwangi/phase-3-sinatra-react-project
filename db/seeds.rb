

puts "🌱 Seeding data..."

# Seed your database here
class Drink
    attr_accessor :name, :price, :description, :ingredients, :image_url
  
    def initialize(name:, price:, description:, ingredients:, image_url:)
      @name = name
      @price = price
      @description = description
      @ingredients = ingredients
      @image_url = image_url
    end
  
    def save
      puts "Sweet drink: #{@name}"
    end
  end

seed_data = [
  {
    name: 'Bubble Pop Delight',
    description: 'A refreshing blend of strawberry and lychee flavors, with a burst of popping boba pearls.',
    ingredients: ['Strawberry syrup', 'Lychee juice', 'Soda water', 'Popping boba pearls'],
    image_url: 'https://i.pinimg.com/564x/7a/d8/2f/7ad82ff45f06d57e987259c2e3c584d5.jpg'
  },
  {
    name: 'Caramel Swirl Latte',
    description: 'A creamy latte infused with caramel syrup, topped with a swirl of whipped cream and a sprinkle of caramel drizzle.',
    ingredients: ['Espresso', 'Milk', 'Caramel syrup', 'Whipped cream', 'Caramel drizzle'],
    image_url: 'https://i.pinimg.com/564x/06/06/e6/0606e628ee60990836f9ee2c0bc95949.jpg'
  },
  {
    name: 'Mango Tango Fizz',
    description: 'A tropical delight with a fizzy twist, blending fresh mango juice, lime, and a hint of mint.',
    ingredients: ['Fresh mango juice', 'Lime juice', 'Soda water', 'Mint leaves'],
    image_url: 'https://i.pinimg.com/564x/64/9a/a8/649aa8d4b2c0ec4d6cf5868e20af4979.jpg'
  },
  {
    name: 'Cotton Candy Cooler',
    description: 'A whimsical blend of cotton candy syrup, blue raspberry, and lemonade, served over crushed ice.',
    ingredients: ['Cotton candy syrup', 'Blue raspberry syrup', 'Lemonade', 'Crushed ice'],
    image_url: 'https://i.pinimg.com/564x/e6/5b/3f/e65b3fe15bf02b26efe41115a97558c3.jpg'
  },
  {
    name: 'Choco-Banana Bliss',
    description: 'Indulge in the decadence of chocolate and banana, perfectly combined in a creamy shake.',
    ingredients: ['Chocolate ice cream', 'Banana', 'Milk', 'Chocolate syrup', 'Whipped cream', 'Chocolate shavings'],
    image_url: '	https://i.pinimg.com/564x/99/26/8b/99268b70ee3ddd303d9a45d3f9a60baa.jpg'
  },
  {
    name: 'Raspberry Lemonade Sparkler',
    description: 'A sparkling fusion of tangy raspberries, zesty lemonade, and a splash of soda water.',
    ingredients: ['Raspberry syrup', 'Lemonade', 'Soda water', 'Fresh raspberries', 'Lemon slices'],
    image_url: 'https://i.pinimg.com/564x/bc/3a/ef/bc3aefbdec7bdeec57d017c5a73c2ccd.jpg'
  },
  {
    name: 'Tiramisu Frappe',
    description: 'A rich and indulgent frappe inspired by the classic Italian dessert, with a blend of coffee, cocoa, and creamy mascarpone.',
    ingredients: ['Coffee', 'Milk', 'Cocoa powder', 'Mascarpone cheese', 'Whipped cream', 'Ladyfinger cookie crumbles'],
    image_url: 'https://i.pinimg.com/564x/ec/63/a6/ec63a686fb2a34abeff9fbf71aa90727.jpg'
  },
  {
    name: 'Pina Colada Sunrise',
    description: 'A tropical delight with the flavors of pineapple and coconut, served with a touch of grenadine.',
    ingredients: ['Pineapple juice', 'Coconut cream', 'Rum', 'Grenadine', 'Pineapple slice', 'Maraschino cherry'],
    image_url: '	https://i.pinimg.com/564x/6a/04/04/6a0404e878e4c30eda7f645c679ee287.jpg'
  }
]
seed_data.each do |drink_data|
    drink = Drink.new(
      name: drink_data[:name],
      price: rand(3.0..6.0).round(2),
      description: drink_data[:description],
      ingredients: drink_data[:ingredients],
      image_url: drink_data[:image_url]
    )
    drink.save
end   
