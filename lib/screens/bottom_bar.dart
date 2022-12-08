import 'package:book_tickets/screens/home_screen.dart';
import 'package:book_tickets/screens/search_screen.dart';
import 'package:book_tickets/screens/ticket_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  static final List<Widget> _widgetOptions = <Widget>[  //The "_widgetOption" variable is of type "List <> ". The List is of type <Widgets>
    //Each text is a widget in the list array. Hence index here = 0
    const HomeScreen(),
    const SearchScreen(), //Index = 1
    const TicketScreen(), // Index = 2
    const Text("Profile") // Index = 3
  ];

  int _selectedWidgetIndex = 0; //This variable is used to assign the current index to the variable "_selectedWidgetIndex"

  void _onWidgetTap(int index){  //void - since this function does not return anything. It only does an action.

    //_selectedWidgetIndex = index;  //This function sets the index passed as a parameter to the value of the _selectedWidgetIndex
    //print('Tapped item is ${_selectedWidgetIndex}');  //Use this code to check if the item being tapped is visible or not.

    //To dynamically change the pages to the selectedWidgets on tapping them, we use the "setState()" method.
    setState(() {
      _selectedWidgetIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(child: _widgetOptions[_selectedWidgetIndex]),  //When u select an item in the bottom nav bar, it displays the contents of that specific page
      //backgroundColor: Colors.deepOrangeAccent,
      bottomNavigationBar : BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),label: "Home"),
          BottomNavigationBarItem(icon : Icon(FluentSystemIcons.ic_fluent_search_regular), activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled), label: "Search"),
          BottomNavigationBarItem(icon : Icon(FluentSystemIcons.ic_fluent_ticket_regular),activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),label : "Tickets"),
          BottomNavigationBarItem(icon : Icon(FluentSystemIcons.ic_fluent_person_regular),activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled), label: "Profile")
        ],
        //Properties of the Bottom Bar :

        onTap: _onWidgetTap,  //This is a property of the BottomNavBar. We assign it with the _onWidgetTap method that we declared above.

        currentIndex: _selectedWidgetIndex,  //Necessary while using the setState() method to know the CURRENT state that the app is changing from to NEXT state.
        //i.e. From ----> To.  Here we assign the currentState as the _selectedWidgetIndex variable that stores currently selected index of whatever widget index has been

        elevation: 10,   //Just to elevate the bottom bar a bit up so that we can differentiate it from the home screen

        type: BottomNavigationBarType.fixed,  //When an item in the bottom bar is selected, it does not let it to move.
        //By default, the items inside the nav bar move when clicked.
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.black87,
      ),
    );
  }
}

