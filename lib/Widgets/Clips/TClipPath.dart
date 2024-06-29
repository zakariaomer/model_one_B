import 'package:flutter/cupertino.dart';
import '../../utils/constans/colors.dart';
import 'Continer.dart';
import 'clip.dart';

class TClipPath extends StatelessWidget {
  const TClipPath({
    super.key,
     required this.child, required this.hieght, required TCusteomCurvedEdges clipper,
  });

  final Widget child;
  final double hieght;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCusteomCurvedEdges(),
      child: Container(
        
        color: TColors.primary.withOpacity(0.8),
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: hieght,
          child: Stack(
            children: [
              Positioned( //Positioned------1
                top: -50,
                right: -100,
                child: TcircularContainer(
                  backgraondcolor: TColors.textwhite.withOpacity(0.1),
                ),
              ),
             
              Positioned( //Positioned------2
                top: 100,
                right: -100,
                child: TcircularContainer(
                  backgraondcolor: TColors.textwhite.withOpacity(0.1),
                ),
              ),
             
              Positioned( //Positioned------3
                top: 100,
                left: -100,
                child: TcircularContainer(
                  backgraondcolor: TColors.textwhite.withOpacity(0.1),
                ),
              ),
              child,

              //  child:Column(),

              // Column(
              // children: [
              // TAppBar(
              //   title:
              // Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(TTexts.homeAppbarTitle,
              //             style: Theme.of(context)
              //                 .textTheme
              //                 .labelMedium!
              //                 .apply(color: TColors.textwhite)
              //                 ), //grey
              //         Text(
              //           TTexts.homeAppbarSubTitle,
              //           style: Theme.of(context)
              //               .textTheme
              //               .headlineSmall!
              //               .apply(color: TColors.textwhite),
              //         )
              //       ]),

              //   actions: [
              //     Stack(
              //       children: [
              //         IconButton(
              //             onPressed: () {},
              //             icon: const Icon(
              //               Icons.shopping_bag,
              //               color: TColors.textwhite,
              //             )),
              //         Positioned(
              //             right: 0,
              //             child: Container(
              //               width: 18,
              //               height: 18,
              //               decoration: BoxDecoration(
              //                 color: TColors.block,
              //                 borderRadius: BorderRadius.circular(100),
              //               ),
              //               child: Center(
              //                 child: Text(
              //                   '2',
              //                   style: Theme.of(context)
              //                       .textTheme
              //                       .labelLarge!
              //                       .apply(
              //                           color: TColors.textwhite,
              //                           fontSizeFactor: 0.8),
              //                 ),
              //               ),
              //             ))
              //       ],
              //     )
              //   ],
              // ),

              //   ],
              // ),
            
            
            ],
          ),
        ),
      ),
    );
  }
}
