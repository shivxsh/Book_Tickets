//Creating a List of maps called hotelList
//key : value  = map

//  Map<String,dynamic> -->  String is for Keys (LHS)
// dynamic is for the values(RHS)

List<Map<String, dynamic>> hotelList = [

  //Here, we have used dynamic for the values because the values
  //are both strings and integers.

  {
    //Map 1's key-value pairs
    'image': 'one.png',
    'place': 'Open Space',
    'destination': 'London',
    'price': 25
  },
  {
    //Map 2's key-value pairs
    'image': 'two.png',
    'place': 'Global Will',
    'destination': 'London',
    'price': 40
  },
  {
    //Map 3's key-value pairs
    'image': 'three.png',
    'place': 'Tallest Building',
    'destination': 'Dubai',
    'price': 68
  },
];