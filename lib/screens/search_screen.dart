import 'package:book_tickets/utils/app_layout.dart';
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
          Gap(AppLayout.getHeight(40)),

          Container(
            padding: const EdgeInsets.all(3.5),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
            color: const Color(0xFFF4F6FD),
            ),
            child: Row(
              children: [
                Container(
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
