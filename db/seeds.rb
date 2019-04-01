puts 'Cleanign databse'
Shirt.destroy_all
Category.destroy_all

puts 'Creating categories'
geek = Category.create!(name:'geek')
casual = Category.create!(name: 'casual')


puts 'Creating Shirts..'
Shirt.create!(sku: 'original-shirt-bear',  name: 'Shirt bear', category: geek, photo_url:'https://images.unsplash.com/photo-1544284490-a105bb94c991?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=401&q=80')
Shirt.create!(sku: 'jean-mimi', name: 'Jean-Michel - Le Wagon', category: casual, photo_url: 'https://images.unsplash.com/photo-1462392246754-28dfa2df8e6b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
Shirt.create!(sku: 'Silk-mini', name: 'Silk-mini - Silk', category: casual, photo_url: 'https://images.unsplash.com/photo-1494281258937-45f28753affd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')

puts 'Finished'
