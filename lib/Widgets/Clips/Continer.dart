import 'package:flutter/material.dart';
import '../../utils/constans/colors.dart';

class TcircularContainer extends StatelessWidget {
  const TcircularContainer({
    super.key,
    this.width = 250,
    this.heigt = 250,
    this.radius = 250,
    this.padding = 0,
    this.margin,
    this.child,
    this.backgraondcolor = TColors.textwhite, 
  });

  final double? width;
  final double? heigt;
  final double radius;
  final double padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgraondcolor;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: width,
      height: heigt,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
           color: backgraondcolor
          // TColors.textwhite.withOpacity(0.1)
          ),
          child: child,
    );
  }
}
