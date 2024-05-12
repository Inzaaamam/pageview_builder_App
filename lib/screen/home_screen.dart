import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:task_pro/color/colors.dart';
import 'package:task_pro/screen/boxscree.dart';
import 'package:task_pro/screen/boxscreen2.dart';
import 'package:task_pro/screen/boxscreen3.dart';
import 'package:task_pro/screen/card1.dart';
import 'package:task_pro/screen/cardbox.dart';
import 'package:task_pro/wigets/search.dart';

// const image =
//     'https://www.georgetown.edu/wp-content/uploads/2022/02/Jkramerheadshot-scaled-e1645036825432-1050x1050-c-default.jpg';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final Size size = MediaQuery.of(context).size;
    final pageController = PageController(
      viewportFraction: 0.8,
      initialPage: 2,
      keepPage: true,
    );

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                const SizedBox(
                  height: 23,
                ),
                const Expanded(
                  // flex: 1,
                  child: SearchWidget(),
                ),
                const SizedBox(
                  width: 15,
                ),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: Image.asset('images/Avatar.png').image,
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'images/Union.png',
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 96,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: CustomColors.cardColor1,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AnimatedContainer(
                            width: 3,
                            height: 15,
                            decoration: BoxDecoration(
                              color: selectedIndex == 0
                                  ? Colors.white
                                  : CustomColors.sliderColor1,
                                  
                              borderRadius: BorderRadius.circular(15),
                            ),
                            duration: const Duration(milliseconds: 100),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          AnimatedContainer(
                            width: 3,
                            height: 15,
                            decoration: BoxDecoration(
                              color: selectedIndex == 1
                                  ? Colors.white
                                  : CustomColors.sliderColor1,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            duration: const Duration(milliseconds: 100),
                          ),
                        ],
                      ),
                    ),
                    // const SizedBox(width: 8),,l
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 96,
                        // width: 127,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: PageView.builder(
                          controller: pageController,
                          scrollDirection: Axis.vertical,
                          itemCount: colors.length,
                          onPageChanged: (index) {
                            selectedIndex = index;
                            log(index.toString());
                          },
                          itemBuilder: (context, index) {
                            return Container(
                              // height: 70,
                              // width: 120,
                              margin: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                              decoration: BoxDecoration(
                                color: colors[index],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Column(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 45),
                                      child: Image(
                                        image: AssetImage('images/gosory.png'),
                                        // alignment: Alignment.bottomLeft,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 30),
                                      child: Text(
                                        'Rp12.379',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    Text(
                                      'Klik & cek riwayat',
                                      style: TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.w600,
                                          color: CustomColors.appBarColor),
                                    ),
                                  ]),
                            );
                          },
                        ),
                      ),
                    ),
              
                    Expanded(
                      flex: 1,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Image.asset('images/arrow.png'),
                            ),
                            const SizedBox(height: 7),
                            const Text(
                              'Bayar',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            )
                          ]),
                    ),
                    
                    Expanded(
                      flex: 1,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Image.asset('images/add.png'),
                            ),
                            const SizedBox(height: 7),
                            const Text(
                              'Top Up',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            )
                          ]),
                    ),
                    
                    Expanded(
                      flex: 1,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Image.asset('images/airplan.png'),
                            ),
                            const SizedBox(height: 7),
                            const Text(
                              'Eksplor',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ]),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // 12 padding size
            // ignore: avoid_unnecessary_containers
            const CardScreen1(),
            const SizedBox(
              height: 7,
            ),
            const BoxScreen(),
            const SizedBox(
              height: 16,
            ),
            const BoxScreen2(),
            const SizedBox(
              height: 32,
            ),
            const Boxscreen3(),
            const SizedBox(
              height: 24,
            ),
            CardBox(
              imagePath: 'images/MaskGroup.png',
              title: 'Makin Seru',
              text: 'Aktifkan & Sambungkan GoPay & GoPayLater di Tokopedia',
            ),
            const SizedBox(
              height: 24,
            ),
            CardBox(
              imagePath: 'images/MaskGroup2.png',
              title: 'Makin Seru',
              text: 'Sambungin Akun ke Tokopedia, Banyakin Untung',
            ),
            const SizedBox(
              height: 24,
            ),
            CardBox(
              imagePath: 'images/MaskGroup4.png',
              title: 'Paket Data',
              text: 'Promo Belanja Online 10.10: Cashback hingga Rp100.000',
            ),
            const SizedBox(
              height: 24,
            ),
            // const ProgresCalculate()

            //  const  StackBox ()
          ],
        ),
      ),
    );
  }
}

const colors = [CustomColors.sliderColor1, Colors.white];
