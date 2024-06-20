import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:model_one/Coloers/colors.dart';
import 'package:model_one/Widgets/textString.dart';

import '../Widgets/Appbar/appbar.dart';
import '../Widgets/Continer.dart';
import '../Widgets/clip.dart';

class HomeSecreen extends StatelessWidget {
  const HomeSecreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: Padding(),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //...........
              // TPrimryHeaderContiner(
             
                TClipPath(
                  child: Column(
                    children: [
                      AppBar(
                        
                        backgroundColor: TColors.primary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(TTexts.homeAppbarTitle,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .apply(color: TColors.textwhite)), //grey
                              Text(
                                TTexts.homeAppbarSubTitle,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .apply(color: TColors.textwhite),
                              )
                            ]),
                        leading:
                            IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                
                        actions: [
                      
                          
                  
                              
                          Stack(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.shopping_bag,
                                    color: TColors.textwhite,
                                  )),
                              Positioned(
                                  right: 0,
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                      color: TColors.block,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '2',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge!
                                            .apply(
                                                color: TColors.textwhite,
                                                fontSizeFactor: 0.8),
                                      ),
                                    ),
                                  ))
                            ],
                          )
                
                        ],
                        
                        // bottom: PreferredSize(child: SizedBox(), preferredSize: Size.fromHeight(200)),
                      ),
                    ],
                  ),
                ),
              
              //  child:Column(),

              Container(
                  color: Color.fromARGB(255, 255, 193, 7),
                  height: 200,
                  width: 200,
                  child: Card(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Expanded(
                            child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Container(
                                    color: Colors.grey[300],
                                    child: Center(
                                      child: Text(
                                        'صورة المنتج',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )))),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('اسم المنتج'),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                'السعر:  \$99.9',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.green),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.shopping_cart)),
                          ],
                        ),
                      ])))
            ],
          ),
        ),
      ),
    );
  }
}

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
        color: TColors.primary.withOpacity(0.9),
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                //Positioned------1
                top: -50,
                right: -100,
                child: TcircularContainer(
                  backgraondcolor: TColors.textwhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                //Positioned------2
                top: 100,
                right: -100,
                child: TcircularContainer(
                  backgraondcolor: TColors.textwhite.withOpacity(0.1),
                ),
              ),

              Positioned(
                //Positioned------3
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
