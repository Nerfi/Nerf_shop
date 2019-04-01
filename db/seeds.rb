puts 'Cleanign databse'
Shirt.destroy_all
Category.destroy_all

puts 'Creating categories'
geek = Category.create!(name:'geek')
casual = Category.create!(name: 'casual')


puts 'Creating Shirts..'

Shirt.create!(price: 55 , sku: 'original-shirt-bear',  name: 'Shirt bear', category: geek, photo_url:'https://images.unsplash.com/photo-1544284490-a105bb94c991?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=401&q=80')
Shirt.create!(price:30 ,sku: 'jean-mimi', name: 'Jean-Michel - Le Wagon', category: casual, photo_url: 'https://images.unsplash.com/photo-1548777331-e62dcdf5e0b9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=298&q=80')
Shirt.create!(price:35 ,sku: 'Silk-mini', name: 'Silk-mini - Silk', category: casual, photo_url: 'https://images.unsplash.com/photo-1531450664978-9be7f46cb497?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80')

puts 'Finished'
