import 'package:flutter/material.dart';
import 'app_layout.dart';
import 'app_styles.dart';

//This is a reusable widget for the ticket tab as well as the search ticket tab.

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({Key? key, required this.firstTab,required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
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
                child: Text(firstTab,
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
                child: Text(secondTab,
                  style: Styles.headLineStyle3.copyWith(color:Colors.black),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
