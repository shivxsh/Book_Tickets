import 'package:book_tickets/screens/ticket_view.dart';
import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/utils/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_info_list.dart';
import '../utils/column_layout.dart';
import '../utils/layout_builder_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children:[
          ListView(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20), horizontal: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text("Tickets", style: Styles.headLineStyle1.copyWith(fontSize: 30),),
            Gap(AppLayout.getHeight(20)),
            const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(ticket: ticketList[0], isColor: true,),
            ),
            const SizedBox(height: 1,),
            Container(
              color: Colors.white,
              margin: EdgeInsets.only(left: AppLayout.getHeight(14.90),right: AppLayout.getHeight(16)),
              padding: const EdgeInsets.symmetric(horizontal:15,vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:const [
                      AppColumnLayout(firstText: "Flutter DB",secondText: "Passenger",alignment: CrossAxisAlignment.start,isColor: false),
                      AppColumnLayout(firstText: "5221 283749",secondText: "Passport",alignment: CrossAxisAlignment.end,isColor: false),
                    ]
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const AppLayoutBuilder(sections: 9, isColor:false, width: 5),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:const [
                        AppColumnLayout(firstText: "12839 19203",secondText: "Number of E-tickets",alignment: CrossAxisAlignment.start,isColor: false),
                        AppColumnLayout(firstText: "B2SG28",secondText: "Booking code",alignment: CrossAxisAlignment.end,isColor: false),
                      ]
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const AppLayoutBuilder(sections: 9, isColor:false, width: 5),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children:[
                              Image.asset("assets/images/visa.png", scale: 11,),
                              Text("*** 2463",
                              style: Styles.headLineStyle3,)
                            ],

                          ),
                          const Gap(5),
                          Text("Payment method",
                          textAlign: TextAlign.start,
                          style: Styles.headLineStyle4,)
                        ],
                      ),
                      const AppColumnLayout(firstText: "\$249.99",secondText: "Price",alignment: CrossAxisAlignment.end,isColor: false),

                    ],
                  ),
                  const SizedBox(height: 1,),
                  Gap(AppLayout.getHeight(20)),
                ],
              ),
            )
          ],
        ),
        ],
      ),
    );
  }
}
