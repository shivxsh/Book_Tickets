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


//This map is for the ticket ui
//List of maps, but here, we have maps inside maps.
List<Map<String, dynamic>> ticketList = [
  //A list of maps :
  {
    //A map inside of a map
    'from': {
      'code':"NYC",
      'name':"New-York"
    },
    'to': {
      'code':"LDN",
      'name':"London"
    },
    'flying_time': '8H 30M',
    'date': "1 MAY",
    'departure_time':"08:00 AM",
    "number":23
  },
  {
    'from': {
      'code':"DK",
      'name':"Dhaka"
    },
    'to': {
      'code':"SH",
      'name':"Shanghai"
    },
    'flying_time': '4H 20M',
    'date': "10 MAY",
    'departure_time':"09:00 AM",
    "number":45
  },
];