import 'package:flutter/material.dart';

import '../services/constants/images.dart';
import '../views/custom_color_view.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  List<Color> colors = [
    Colors.black,
    Colors.grey,
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,

      ///#Body
      body: Stack(
        children: [
          Image.asset(CustomImages.salon),

          ///#Container
          Padding(
            padding: const EdgeInsets.only(top: 400),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              height: 230,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 60, top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                            text: const TextSpan(
                                text: "Black and White\n",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                                children: [
                              TextSpan(
                                  text: "\$1,000",
                                  style: TextStyle(
                                      color: Color(0xffD01000), fontSize: 16))
                            ])),
                        const SizedBox(
                          width: 40,
                        ),
                        RichText(
                            text: TextSpan(
                                text: "All Black",
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontSize: 20,
                                ),
                                children: const [
                              TextSpan(
                                  text: "\nIncluded",
                                  style: TextStyle(
                                      color: Color(0xffA4B0BC), fontSize: 14))
                            ])),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  ///#colors
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: Row(children: [
                      for (int i = 0; i <= 1; i++)
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
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  /// #Row
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
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
            ),
          )
        ],
      ),
    );
  }
}
