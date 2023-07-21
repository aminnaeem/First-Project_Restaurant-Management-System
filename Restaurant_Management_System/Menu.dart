List<Map> menu = [
  {'Fast Food' : [
    {'Item' : 'Zinger Burger', 'Price' : 300},
    {'Item' : 'Zinger Cheese Burger', 'Price' : 330},
    {'Item' : 'Chicken Burger', 'Price' : 280},
    {'Item' : 'Chicken Cheese Burger', 'Price' : 300},
    {'Item' : 'Beef Burger', 'Price' : 280},
    {'Item' : 'Zinger Roll', 'Price' : 250},
    {'Item' : 'Zinger Mayo Roll', 'Price' : 380},
    {'Item' : 'Zinger Mayo Roll', 'Price' : 380},
    {'Item' : 'Chicken Roll', 'Price' : 230},
    {'Item' : 'Chicken Mayo Garlic Roll', 'Price' : 260},
    {'Item' : 'Beef Boti Roll', 'Price' : 200},
    {'Item' : 'Beef Kabab Roll', 'Price' : 180},
    ]
  },
  {'Bar B Q' : [
    {'Item' : 'Chicken Tikka', 'Price' : 400},
    {'Item' : 'Chicken Malai TIkka', 'Price' : 450},
    {'Item' : 'Charga (Half)', 'Price' : 800},
    {'Item' : 'Charga (Full)', 'Price' : 1550},
    {'Item' : 'Chicken Boti', 'Price' : 380},
    {'Item' : 'Chicken Malai Boti', 'Price' : 400},
    {'Item' : 'Beef Bihari Boti', 'Price' : 450},
    {'Item' : 'Beef Bihari Kabab', 'Price' : 420},
    ]
  },
  {'Pakistani Cuisine' : [
    {'Item' : 'Chicken Karahi Full', 'Price' : 1800},
    {'Item' : 'Chicken Karachi Half', 'Price' : 950},
    {'Item' : 'Chicken Handi Full', 'Price' : 1800},
    {'Item' : 'Chicken Handi Half', 'Price' : 950},
    {'Item' : 'Mutton Karahi Full', 'Price' : 2500},
    {'Item' : 'Mutton Karahi Half', 'Price' : 1300},
    ]
  },
  {'Tandoor' : [
    {'Item' : 'Naan', 'Price' : 40},
    {'Item' : 'Garlic Naan', 'Price' : 60},
    {'Item' : 'Roghni Qulcha', 'Price' : 100},
    {'Item' : 'Paratha', 'Price' : 110},
    {'Item' : 'Chapati', 'Price' : 25},
    ]
  },
  {'Beverages' : [
    {'Item' : 'Soft Drink', 'Price' : 110},
    {'Item' : 'Mineral Water 500ml', 'Price' : 70},
    {'Item' : 'Mineral Water 1.5L', 'Price' : 130},
    ]
  },
];

// void main () {
//   menu.forEach((category) {
//     category.forEach((categoryName, items) {
//       print('Category: $categoryName');
//       int cnt = 1;
//       items.forEach((item) {
//         String itemName = item['Item'];
//         int itemPrice = item['Price'];
//         print('$cnt. $itemName, Price: $itemPrice');
//         cnt++;
//       });
//       print('');
//     });
//   });
// }