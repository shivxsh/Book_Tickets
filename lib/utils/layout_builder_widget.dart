import 'package:flutter/material.dart';
import 'app_layout.dart';

class AppLayoutBuilder extends StatelessWidget {
  final bool? isColor;
  final int sections;
  final double width;
  const AppLayoutBuilder({Key? key, this.isColor, required this.sections, this.width=3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context , BoxConstraints constraints ) {
        //print("Width is ${constraints.constrainWidth()}");
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children : List.generate((constraints.constrainWidth()/sections).floor(), (index) => SizedBox(
              height: AppLayout.getHeight(1),
              width: width,
              child:  DecoratedBox(decoration: BoxDecoration(
                color: isColor==null? Colors.white : Colors.blueGrey,
              )))),
        );
      },
    );
  }
}
