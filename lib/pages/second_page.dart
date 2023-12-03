import 'package:flutter/material.dart';
import 'package:tesla/views/custom_color_view.dart';

import '../services/constants/images.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<Color> colors = [
    Colors.black,
    const Color(0xff45525C),
    Colors.blue,
    Colors.white,
    Colors.red
  ];
  int currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,

      ///#body

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "Select Color",
                style: TextStyle(fontSize: 20, color: Color(0xffA4B0BC)),
              ),
            ),
            Image.asset(CustomImages.tesla2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: RichText(
                text: const TextSpan(
                  text: "Pearl White Multi-Coat",
                  style: TextStyle(color: Colors.black, fontSize: 22),
                  children: [
                    TextSpan(
                        text: "\n\$2,000",
                        style:
                            TextStyle(color: Color(0xffD01000), fontSize: 20))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),

            ///#colors
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (int i = 0; i < 5; i++)
                      CustomColorView(
                        color: colors[i],
                        index: i,
                        function: () {
                          currentIndex = i;
                          setState(() {});
                        },
                        isSelected: currentIndex == i,
                      ),
                  ]),
            ),

            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.5,
                    color: const Color(0xffCFD3D9),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "20’’ Performance Wheels",
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Carbon fiber spoiler",
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 35,
            ),

            ///last row
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              height: 120,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  /// #Row
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 50, top: 30, bottom: 30),
                    child: Row(
                      children: [
                        const Text(
                          "\$55,700",
                          style: TextStyle(fontSize: 24),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: Container(
                            height: 55,
                            width: 160,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                    width: 2,
                                    color: const Color(0xffD01000),
                                    style: BorderStyle.solid)),
                            child: const Center(
                              child: Text(
                                "Next",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
