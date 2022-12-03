import 'package:book_tickets/screens/hotel_screen.dart';
import 'package:book_tickets/screens/ticket_view.dart';
import 'package:flutter/material.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,

    //Start of home screen, by a list of widgets aligned either as columns or rows.
      body: ListView(
        children: [
      //One big container that holds the Starting texts, search box, and the text below the search box.
          Container(
           padding: const EdgeInsets.all(20), //pads left,right,up & down by 20px
            // padding: EdgeInsets.symmetric(horizontal: 20),  //pads the container on both sides (left and right) by 20px.

          //Start of the elements inside the container
            child: Column(
              children: [
            //This is the main row that contains the Header texts (Good morning, Book Tickets! & The IMAGE)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                //This is the column of the "Good Morning" and "Book Ticket" header texts.
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                           Text("Good Morning!",
                           style:Styles.headLineStyle3),
                           const Gap(5),
                           Text("Book Tickets!",
                           style: Styles.headLineStyle1),
                        ],
                      ),

                //This container contains the BoxDecoration class that has the IMAGE.
                    Container(
                      height: 50,
                      width: 50,
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/img_1.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),

                const Gap(25),

            //The actual search box around the elements inside the search BOX.
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xFFF4F6FD),
                  ),

            //This is the content INSIDE the "Search" box.
                  child: Row(

                    //Inorder to wrap this search box contents with a box, we need to use a container. Thus, we wrap this Row widget.
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205),),
                      Text('Search',
                      style : Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),

                const Gap(40),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Text("Upcoming Flights",
                    style: Styles.headLineStyle2),
                    InkWell(   //Turn texts into clickable buttons.
                      onTap: (){
                      },
                      child: Text("View all",
                      //copyWith() is used to add to the Styles.<variables>
                      style: Styles.headLineStyle4.copyWith(color: Styles.primaryColor)),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Gap(15),

          //A box inside which the display will be scrollable either vertically or horizontally for a single widget.
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(  //The single child of this scrollable widget.
              children : const[
                //The ticket ui is made scrollable horizontally.
                TicketView(),
                TicketView(),
              ],
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text("Hotels",
                    style: Styles.headLineStyle2),
                InkWell(   //Turn texts into clickable buttons.
                  onTap: (){
                  },
                  child: Text("View all",
                      //copyWith() is used to add to the Styles.<variables>
                      style: Styles.headLineStyle4.copyWith(color: Styles.primaryColor)),
                ),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child:Row(
              children: const [
                HotelScreen(),
                HotelScreen(),
                ],
              )),
          ],
        ),
    );
  }
}

