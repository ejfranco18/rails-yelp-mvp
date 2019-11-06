puts 'Cleaning database...'
Restaurant.destroy_all
Review.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Buffalo Wings',
    address:      'Kadath E2 7JE',
    phone_number: '345 234234',
    category:     'belgian'
  },
  {
    name:         'Dallas BBQ',
    address:      'Innsmouth 56A St',
    phone_number: '356 5252355',
    category:     'french'
  },
  {
    name:         'Rock n Sushi',
    address:      'Miskatonic E1 6PQ',
    phone_number: '345 55234345',
    category:     'japanese'
  },
  {
    name:         'Tommy Mels',
    address:      'Leng St 6PQ',
    phone_number: '331 236654',
    category:     'italian'
  },
  {
    name:         'Poke go',
    address:      'Arkham E1',
    phone_number: '842 9873204',
    category:     'italian'
  }
]

puts 'Creating reviews...'
reviews_attributes = [
  {
    restaurant_id: 1,
    content: "Not understanding that you're a horrible person doesn't make you less of a horrible person",
    rating: 3
  },
  {
    restaurant_id: 1,
    content: "Spaghetti or not, here I come",
    rating: 4
  },
  {
    restaurant_id: 2,
    content: "I need to go take a shower so I can't tell if I'm crying or not",
    rating: 2
  },
  {
    restaurant_id: 3,
    content: "Ow, crap. I hate this. Running is terrible. Everything is the worst",
    rating: 3
  },
  {
    restaurant_id: 4,
    content: "For a lot of people, life is just one long, hard kick in the urethra",
    rating: 5
  },
  {
    restaurant_id: 5,
    content: "Yes, I ate all the muffins, because I have no self-control and I hate myself",
    rating: 4
  },
  {
    restaurant_id: 5,
    content: "That's the problem with life, either you know what you want and you don't get what you want, or you get what you want and then you don't know what you want",
    rating: 2
  }
]
Restaurant.create!(restaurants_attributes)
Review.create!(reviews_attributes)
puts 'Finished!'
