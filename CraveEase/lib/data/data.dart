import '/models/food.dart';
import '/models/order.dart';
import '/models/restaurant.dart';
import '/models/user.dart';

// Food
final _alooparatha = Food(imageUrl: 'assets/images/alooparatha.jpg', name: 'Aloo Paratha', price: 25.00);
final _mixparatha = Food(imageUrl: 'assets/images/alooparatha.jpg', name: 'Mix Paratha', price: 25.00);
final _plainomelette = Food(imageUrl: 'assets/images/omellete.jpg', name: 'Plain Omelette', price: 25.00);
final _noodles = Food(imageUrl: 'assets/images/noodles.jpg', name: 'Chowmien Noodles', price: 25.00);
final _breadomellete = Food(imageUrl: 'assets/images/omellete.jpg', name: 'Bread Omellete', price: 30.00);
final _burger=Food(imageUrl: 'assets/images/burger.jpg', name: 'Burger', price: 25.00);
final _juice = Food(imageUrl: 'assets/images/juice.jpg', name: 'Juice', price: 30.00);
final _coffee = Food(imageUrl: 'assets/images/coffee.jpg', name: 'Coffee', price: 25.00);

// Restaurants
final _restaurant0 = Restaurant(
  imageUrl: 'assets/images/4H.jpeg', 
  name: '4H Food Court',
  address: 'Kailash Boys Hostel',
  
  menu: [_alooparatha, _mixparatha, _plainomelette, _noodles, _breadomellete, _burger, _juice, _coffee],
);
final _restaurant1 = Restaurant(
  imageUrl: 'assets/images/foodplaza.jpeg',
  name: 'Food Plaza',
  address: 'Gate-2',
  
  menu: [_alooparatha, _noodles, _breadomellete, _juice, _burger, _coffee],
);
final _restaurant2 = Restaurant(
  imageUrl: 'assets/images/verka.jpeg',
  name: 'Verka',
  address: 'Near Student Park',
  
  menu: [_alooparatha, _noodles, _coffee, _burger, _breadomellete, _juice],
);
final _restaurant3 = Restaurant(
  imageUrl: 'assets/images/restaurant3.jpg',
  name: 'Food Court',
  address: 'Near SBI Bank',
  
  menu: [_alooparatha, _noodles, _burger, _juice, _coffee],
);
final _restaurant4 = Restaurant(
  imageUrl: 'assets/images/restaurant4.jpg',
  name: 'Amul',
  address: 'Gate-1',
 
  menu: [_alooparatha, _noodles, _burger, _coffee],
);

final List<Restaurant> restaurants = [
  _restaurant0,
  _restaurant1,
  _restaurant2,
  _restaurant3,
  _restaurant4,
];

// User
final currentUser = User(
  name: 'Rebecca',
  orders: [
    Order(
      date: 'Nov 10, 2019',
      food: _alooparatha,
      restaurant: _restaurant0,
      quantity: 1,
    ),
    Order(
      date: 'Nov 8, 2019',
      food: _juice,
      restaurant: _restaurant0,
      quantity: 3,
    ),
    Order(
      date: 'Nov 5, 2019',
      food: _burger,
      restaurant: _restaurant1,
      quantity: 2,
    ),
    Order(
      date: 'Nov 2, 2019',
      food: _breadomellete,
      restaurant: _restaurant3,
      quantity: 1,
    ),
    Order(
      date: 'Nov 1, 2019',
      food: _mixparatha,
      restaurant: _restaurant4,
      quantity: 1,
    ),
  ],
  cart: [
    Order(
      date: 'Nov 11, 2019',
      food: _burger,
      restaurant: _restaurant2,
      quantity: 2,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: _burger,
      restaurant: _restaurant2,
      quantity: 1,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: _juice,
      restaurant: _restaurant3,
      quantity: 1,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: _alooparatha,
      restaurant: _restaurant4,
      quantity: 3,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: _coffee,
      restaurant: _restaurant1,
      quantity: 2,
    ),
  ],
);