Restaurant.destroy_all

restaurants_attributes= [
{
  name: "restaunt1",
  address: "address1",
  phone_number: "phone_number1",
  category: "chinese"
},
{
  name: "restaunt2",
  address: "address2",
  phone_number: "phone_number2",
  category: "italian"
},
{
  name: "restaunt3",
  address: "address3",
  phone_number: "phone_number3",
  category: "japanese"
},
{
  name: "restaunt4",
  address: "address4",
  phone_number: "phone_number4",
  category: "french"
},
{
  name: "restaunt5",
  address: "address5",
  phone_number: "phone_number5",
  category: "belgian"
}
]

restaurants_attributes.each { |params| Restaurant.create!(params) }

  reviews_params= [{
  rating: "0",
  content: "kjnqKSJFNDQJMKSFNKJmsdnjf",
  restaurant_id: 1
},
{
  rating: "2",
  content:  "kjmqFBKJKSQJFKJD",
  restaurant_id: 2
},
{
  rating: "2",
  content:  "KJMQSFNBKJLQ",
  restaurant_id: 3
},
{
  rating: "2",
  content:  "FDSQFdsqfsq",
  restaurant_id: 4
},
{
  rating: "2",
  content:  "sQFDQSFDSF",
  restaurant_id: 5
}]

reviews_params.each do { |params| Reviews.create!(params)}

