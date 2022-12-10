import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/utils/column_layout.dart';
import 'package:book_tickets/utils/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../utils/app_layout.dart';
import '../utils/layout_builder_widget.dart';

//This code is for the UI of ticket view in home screen.
class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor; //initially set to null. If its true, change the color else dont change the color.
  //Introduced for ticket screen.
  const TicketView({Key? key, required this.ticket, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //refer app_layout.dart file to know what the AppLayout class does.
    final size = AppLayout.getSize(context);
    return SizedBox(
      width:size.width*0.85, //width is dependant on the orientation of the device.
        //width * 0.85 = we r using only 85% of the screen.  (85% = 85/100 = 0.85)
      height: AppLayout.getHeight(GetPlatform.isAndroid==true?190:190), //height is set to 200px regardless of the orientation.
      child : Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            //This container is responsible for the blue part of the ticket
            Container(
              padding: const EdgeInsets.all(20),
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(21)), topRight: Radius.circular(AppLayout.getHeight(21))),
                //This is the color that changes with respect to the "isColor" boolean variable.
                color: isColor == null ? const Color(0xFF526799) : Colors.white,
              ),
              child: Column(
                children: [
                  //First row containing "NYC" , " Flight icon on " ---- "  " and "LDN".
                  Row(
                    children: [
                      Text(ticket['from']['code'],
                        style: isColor==null? Styles.headLineStyle2.copyWith(color: Colors.white) : Styles.headLineStyle3,),
                      Expanded(child: Container(),),
                      const ThickContainer(isColor: true),
                      Expanded(child: Stack(
                        children:[ SizedBox(
                          height: AppLayout.getHeight(24),
                          child : const AppLayoutBuilder(sections: 9),
                        ),
                          Center(child: Transform.rotate(angle: 1.563, child: Icon(Icons.airplanemode_active_sharp, color: isColor==null? Colors.white : Color(0xFF8ACCF7),))),
                        ],
                      ),),

                      const ThickContainer(isColor:true),
                      Expanded(child: Container(),),//Spaces 2 row elements.
                      Text(ticket['to']['code'],
                        style: isColor==null? Styles.headLineStyle2.copyWith(color: Colors.white) : Styles.headLineStyle3,),
                    ],
                  ),

                  const Gap(5),

                  //Second row containing "New York" , "8H 30M" and "London"
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: AppLayout.getWidth(124),
                          child: Text(ticket['from']['name'],
                            style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle4,)
                      ),
                      Text(ticket['flying_time'],
                        style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle4,),
                      SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(ticket['to']['name'],
                          textAlign: TextAlign.end,
                              style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white) :  Styles.headLineStyle4,),
                      ),
                    ],
                  )
                ],
              ),
            ),

            //This container is responsible for the small orange part of the ticket
            Container(
              color: isColor==null? Styles.orangeColor : Colors.white ,
              //Row responsible for the semi-circles and the dotted white lines
              child: Row(
                children : [
                //The sized box represents the semi circles of the "Ticket shaped" layout in home screen
                  SizedBox(
                      height: AppLayout.getHeight(isColor==null?20:26),
                      width: AppLayout.getWidth(10),
                      child : DecoratedBox(
                          decoration: BoxDecoration(
                            color: isColor == null? Colors.grey.shade200 : Colors.white,
                            borderRadius: const BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                          ),
                      ),
                  ),
                  //Adding an expanded widget to space the two semi circles apart from each other
                  //Added this instead of mainAxisAlignment in Row() because we need to add the " ------ " lines in-between the two semi-circles
                  Expanded(
                      child: LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints){
                      return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children : List.generate((constraints.constrainWidth()/15).floor() , (index) => SizedBox(
                             height: AppLayout.getHeight(1),
                             width: AppLayout.getWidth(5),
                            child: DecoratedBox(decoration: BoxDecoration(
                              color: isColor==null? Colors.white : Colors.blueGrey ,
                            ),),
                          ))
                      );
                    }
                  )),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(decoration: BoxDecoration(
                      borderRadius:const BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                      color: isColor == null? Colors.grey.shade200 : Colors.white,
                    ),),

                  ),
                ],
              ),
            ),
            //This container is responsible for the bigger orange part of the ticket
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(isColor==null?21:0),bottomRight: Radius.circular(isColor==null?21:0)),
                  color: isColor==null? Styles.orangeColor : Colors.white,
                ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(firstText: ticket['date'], secondText: "Date", alignment:CrossAxisAlignment.start, isColor:isColor),
                      //First column contents inside of the orange ticket part.

                      AppColumnLayout(firstText: ticket['departure_time'], secondText: "Departure Time", alignment:CrossAxisAlignment.center, isColor:isColor),
                      //Second column contents at the center of the orange ticket part.

                      AppColumnLayout(firstText: ticket["number"].toString(), secondText: "Number", alignment:CrossAxisAlignment.end, isColor:isColor),
                      //Third column contents at the end of the orange ticket part.
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}

