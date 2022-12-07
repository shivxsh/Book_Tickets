import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/double_text_widget.dart';
import 'package:book_tickets/utils/icon_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What are\nyou looking for?",
          //We can also use the AppLayout class we defined to dynamically set the font size :
          style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getHeight(35))
          //style: Styles.headLineStyle1.copyWith(fontSize: 38),),
          ),
          Gap(AppLayout.getHeight(20)),

          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                color: const Color(0xFFF4F6FD),
              ),
              child: Row(
                children: [
                  Container(
                    //This container is for the text "Airline Tickets" inside the search bar
                    padding: EdgeInsets.symmetric(vertical : AppLayout.getHeight(7)),
                    width: size.width*0.44,
                    decoration: BoxDecoration(
                      //This border radius will only apply to the left side of the border
                      borderRadius: BorderRadius.horizontal(left : Radius.circular(AppLayout.getWidth(50))),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text("Airline Tickets",
                        style: Styles.headLineStyle3.copyWith(color:Colors.black),),
                    ),
                  ),

                  Container(
                    //This container is for the text "Hotels" inside the search bar
                    padding: EdgeInsets.symmetric(vertical : AppLayout.getHeight(7)),
                    width: size.width*0.44,
                    decoration: BoxDecoration(
                      //This border radius will only apply to the left side of the border
                      borderRadius: BorderRadius.horizontal(right : Radius.circular(AppLayout.getWidth(50))),
                      color: Colors.transparent,
                    ),
                    child: Center(
                      child: Text("Hotels",
                        style: Styles.headLineStyle3.copyWith(color:Colors.black),),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          //Rather than re writing the whole container again for 2 search boxes,
          //We create a new util screen called :icon_text_widget" that takes in the container
          //And generates the container by taking in the 2 inputs :
          //"Icon" and "Text inside the container"
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(15)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(25)),
          //This container cannot be reused again, hence it is hardcoded.
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(18), vertical: AppLayout.getHeight(18)),
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
              color: const Color(0xD91130CE),
            ),
            child: Center(
              child: Text("Find Tickets",
                style: Styles.textStyle.copyWith(color : Colors.white),

              ),
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          const DoubleText(bigText: "Upcoming Flights", smallText: "View all"),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //This container holds both : image and the text beneath it.
              Container(
                height: AppLayout.getHeight(425),
                width: size.width*0.42,
                padding: EdgeInsets.symmetric(horizontal:AppLayout.getHeight(15) ,vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    //This container contains the image inside the container.
                    Container(
                      height: AppLayout.getHeight(200),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                        image: const DecorationImage(
                          fit : BoxFit.cover,
                          image: AssetImage(
                              "assets/images/sit.jpg"
                          ),
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text("20% discount on the early booking of this flight! Don't miss out.",
                    style: Styles.headLineStyle2,)
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width*0.44,
                        height: AppLayout.getHeight((200)),
                        decoration: BoxDecoration(
                          color: const Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                        ),
                        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getWidth(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Text("Discount\nfor survey!",
                          style: Styles.headLineStyle1.copyWith(fontWeight: FontWeight.bold, color: Colors.white)
                            ),
                            Gap(AppLayout.getWidth(15)),
                            Text("Take the survey about our services & get a discount.",
                              style: Styles.headLineStyle3.copyWith(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 18.5),),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,

                        child: Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(30)),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 18, color: Color(0xFF189999)),
                          color: Colors.transparent,
                        ),
                      ),)
                      //The small blue semi circle inside the blue card.

                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width*0.45,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(vertical:AppLayout.getHeight(15), horizontal: AppLayout.getWidth(15)),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEC6545),
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                    ),
                    child: Column(
                      children: [
                        Text("Take love", style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                        Gap(AppLayout.getHeight(5)),
                        RichText(text: const TextSpan(
                          children: [
                            TextSpan(
                              text: '😍',
                              style: TextStyle(fontSize: 34),
                            ),
                            TextSpan(
                              text: '🥰',
                              style: TextStyle(fontSize: 45),
                            ),
                            TextSpan(
                              text: '😘',
                              style: TextStyle(fontSize: 34),
                            ),
                          ]
                        ))
                      ],
                    ),
                  )
                ],
              )
            ],
          )

        ],
      ),
    );
  }
}
