import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:model_one/Coloers/colors.dart';

import '../Widgets/Continer.dart';
import '../Widgets/clip.dart';

class HomeSecreen extends StatelessWidget {
  const HomeSecreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TClipPath(
              child:
              //child......
              SizedBox(),
            )
          ],
        ),
      ),
    );
  }
}

// class TprimryHeaderContiner extends StatelessWidget {
//   const TprimryHeaderContiner({
//     super.key,
//     required this.child,
//   });
//   final Widget child;

//   @override
//   Widget build(BuildContext context) {
//     return TClipPath(
//       child: Container(
//         // color: TColors.primary,
//         // padding: const EdgeInsets.all(0),
//         // child: SizedBox(
//         //   height: 400,
//         //   child: Stack(
//         //     children: [
//         //       TcircularContainer(
//         //         backgraondcolor: TColors.textwhite.withOpacity(0.1),
//         //       ),
//         //       Positioned(
//         //         top: 100,
//         //         height: -300,
//         //         child: TcircularContainer(
//         //           backgraondcolor:
//         //               TColors.textwhite.withOpacity(0.1),
//         //         ),
//         //       )
//         //     ],
//         //   ),
//         // ),
//       ),
//     );
//   }
// }

class TClipPath extends StatelessWidget {
  const TClipPath({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCusteomCurvedEdges(),
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: TcircularContainer(
                  backgraondcolor: TColors.textwhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: TcircularContainer(
                  backgraondcolor: TColors.textwhite.withOpacity(0.1),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
