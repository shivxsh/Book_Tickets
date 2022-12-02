import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/utils/thick_container.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';

//This code is for the UI of ticket view in home screen.
class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);  
    return SizedBox(
      width:size.width,
      height: 200,

      child : Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            //This container is responsible for the blue part of the ticket.
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
                      Text("NYC", style: Styles.headLineStyle2.copyWith(color: Colors.white),),
                      Expanded(child: Container(),),
                      const ThickContainer(),
                      Expanded(child: Stack(
                        children:[ SizedBox(
                          height: 24,
                          child : LayoutBuilder(
                            builder: (BuildContext context , BoxConstraints constraints ) {
                              print("Width is ${constraints.constrainWidth()}");
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
                      Text("LDN", style: Styles.headLineStyle2.copyWith(color: Colors.white),),
                    ],
                  ),

                  const Gap(5),

                  //Second row containing "New York" , "8H 30M" and "London"
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 100,
                          child: Text("New-York", style: Styles.headLineStyle4.copyWith(color: Colors.white),)
                      ),
                      Text("8H 30M", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      SizedBox(
                          width: 100,
                          child: Text("London",
                          textAlign: TextAlign.end, style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                      ),
                    ],
                  )
                ],
              ),
            ),

            //This container is responsible for the orange part of the ticket.
            Container(


            ),
          ],
        ),
      )

    );
  }
}

