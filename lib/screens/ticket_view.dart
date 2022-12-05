import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/utils/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';

//This code is for the UI of ticket view in home screen.
class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //refer app_layout.dart file to know what the AppLayout class does.
    final size = AppLayout.getSize(context);

    return SizedBox(
      width:size.width*0.85, //width is dependant on the orientation of the device.
        //width * 0.85 = we r using only 85% of the screen.  (85% = 85/100 = 0.85)
      height: 200, //height is set to 200px regardless of the orientation.

      child : Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            //This container is responsible for the blue part of the ticket
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21)),
                color: Color(0xFF526799),
              ),
              child: Column(
                children: [
                  //First row containing "NYC" , " Flight icon on " ---- "  " and "LDN".
                  Row(
                    children: [
                      Text(ticket['from']['code'], style: Styles.headLineStyle2.copyWith(color: Colors.white),),
                      Expanded(child: Container(),),
                      const ThickContainer(),
                      Expanded(child: Stack(
                        children:[ SizedBox(
                          height: 24,
                          child : LayoutBuilder(
                            builder: (BuildContext context , BoxConstraints constraints ) {
                              //print("Width is ${constraints.constrainWidth()}");
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children : List.generate((constraints.constrainWidth()/9).floor(), (index) => const SizedBox(
                                    height: 1, width: 3,
                                    child:  DecoratedBox(decoration: BoxDecoration(
                                      color: Colors.white,
                                    )))),
                              );
                            },
                          ),
                        ),
                          Center(child: Transform.rotate(angle: 1.563, child: const Icon(Icons.airplanemode_active_sharp, color: Colors.white,))),
                        ],
                      ),),

                      const ThickContainer(),
                      Expanded(child: Container(),),//Spaces 2 row elements.
                      Text(ticket['to']['code'], style: Styles.headLineStyle2.copyWith(color: Colors.white),),
                    ],
                  ),

                  const Gap(5),

                  //Second row containing "New York" , "8H 30M" and "London"
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 100,
                          child: Text(ticket['from']['name'], style: Styles.headLineStyle4.copyWith(color: Colors.white),)
                      ),
                      Text(ticket['flying_time'], style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      SizedBox(
                          width: 100,
                          child: Text(ticket['to']['name'],
                          textAlign: TextAlign.end, style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                      ),
                    ],
                  )
                ],
              ),
            ),

            //This container is responsible for the small orange part of the ticket
            Container(
              color: Styles.orangeColor,
              //Row responsible for the semi-circles and the dotted white lines
              child: Row(
                children : [
                //The sized box represents the semi circles of the "Ticket shaped" layout in home screen
                  const SizedBox(
                      height: 20,
                      width: 10,
                      child : DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                          ),
                      ),
                  ),
                  //Adding an expanded widget to space the two semi circles apart from each other
                  //Added this instead of mainAxisAlignment in Row() because we need to add the " ------ " lines in-between the two semi-circles
                  Expanded(child: LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints){
                      return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children : List.generate((constraints.constrainWidth()/15).floor() , (index) => const SizedBox(
                            height: 1,
                            width: 5,
                            child: DecoratedBox(decoration: BoxDecoration(
                              color: Colors.white,
                            ),),
                          ))
                      );
                    }
                  )),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                      color: Colors.white,
                    ),),

                  ),
                ],
              ),
            ),
            //This container is responsible for the bigger orange part of the ticket
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(21),bottomRight: Radius.circular(21)),
                  color: Styles.orangeColor,
                ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //First column contents inside of the orange ticket part.
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ticket['date'],
                            style: Styles.headLineStyle2.copyWith(color: Colors.white),),
                          const Gap(5),
                          Text("Date",
                            style: Styles.headLineStyle4.copyWith(color: Colors.white),)
                        ],
                      ),

                      //Second column contents at the center of the orange ticket part.
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket['departure_time'],
                            style: Styles.headLineStyle2.copyWith(color: Colors.white),
                          ),
                          const Gap(5),
                          Text("Departure Time",
                            style: Styles.headLineStyle4.copyWith(color: Colors.white),
                          ),
                        ],
                      ),

                      //Third column contents at the end of the orange ticket part.
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticket["number"].toString(),  //since, the number is given in ann integer format in the map.
                          //hence, we convert it into a string since the map we assigned for the ticket is a <String, dynamic>
                            style: Styles.headLineStyle2.copyWith(color: Colors.white),

                          ),
                          const Gap(5),
                          Text("Number",
                            style: Styles.headLineStyle4.copyWith(color: Colors.white),

                          ),
                        ],
                      ),
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

