

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
    image_url: 'https://example.com/bubble_pop_delight.jpg'
  },
  {
    name: 'Caramel Swirl Latte',
    description: 'A creamy latte infused with caramel syrup, topped with a swirl of whipped cream and a sprinkle of caramel drizzle.',
    ingredients: ['Espresso', 'Milk', 'Caramel syrup', 'Whipped cream', 'Caramel drizzle'],
    image_url: 'https://example.com/caramel_swirl_latte.jpg'
  },
  {
    name: 'Mango Tango Fizz',
    description: 'A tropical delight with a fizzy twist, blending fresh mango juice, lime, and a hint of mint.',
    ingredients: ['Fresh mango juice', 'Lime juice', 'Soda water', 'Mint leaves'],
    image_url: 'https://example.com/mango_tango_fizz.jpg'
  },
  {
    name: 'Cotton Candy Cooler',
    description: 'A whimsical blend of cotton candy syrup, blue raspberry, and lemonade, served over crushed ice.',
    ingredients: ['Cotton candy syrup', 'Blue raspberry syrup', 'Lemonade', 'Crushed ice'],
    image_url: 'https://example.com/cotton_candy_cooler.jpg'
  },
  {
    name: 'Choco-Banana Bliss',
    description: 'Indulge in the decadence of chocolate and banana, perfectly combined in a creamy shake.',
    ingredients: ['Chocolate ice cream', 'Banana', 'Milk', 'Chocolate syrup', 'Whipped cream', 'Chocolate shavings'],
    image_url: 'https://example.com/choco_banana_bliss.jpg'
  },
  {
    name: 'Raspberry Lemonade Sparkler',
    description: 'A sparkling fusion of tangy raspberries, zesty lemonade, and a splash of soda water.',
    ingredients: ['Raspberry syrup', 'Lemonade', 'Soda water', 'Fresh raspberries', 'Lemon slices'],
    image_url: 'https://example.com/raspberry_lemonade_sparkler.jpg'
  },
  {
    name: 'Tiramisu Frappe',
    description: 'A rich and indulgent frappe inspired by the classic Italian dessert, with a blend of coffee, cocoa, and creamy mascarpone.',
    ingredients: ['Coffee', 'Milk', 'Cocoa powder', 'Mascarpone cheese', 'Whipped cream', 'Ladyfinger cookie crumbles'],
    image_url: 'https://example.com/tiramisu_frappe.jpg'
  },
  {
    name: 'Pina Colada Sunrise',
    description: 'A tropical delight with the flavors of pineapple and coconut, served with a touch of grenadine.',
    ingredients: ['Pineapple juice', 'Coconut cream', 'Rum', 'Grenadine', 'Pineapple slice', 'Maraschino cherry'],
    image_url: 'https://example.com/pina_colada_sunrise.jpg'
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
