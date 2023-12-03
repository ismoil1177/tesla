import 'package:flutter/material.dart';

import '../services/constants/images.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,

      ///#Body
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
                "Select Your Car",
                style: TextStyle(fontSize: 20, color: Color(0xffA4B0BC)),
              ),
            ),
            Image.asset(CustomImages.tesla1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  RichText(
                      text: const TextSpan(
                          text: "Performance",
                          style: TextStyle(color: Colors.black, fontSize: 22),
                          children: [
                        TextSpan(
                            text: "\n\$55,700",
                            style: TextStyle(
                                color: Color(0xffD01000), fontSize: 20))
                      ])),
                  const SizedBox(
                    width: 58,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Long Range",
                      style: const TextStyle(
                          color: Color(0xffA4B0BC), fontSize: 22),
                      children: [
                        TextSpan(
                            text: "\n\$46,700",
                            style: TextStyle(
                                color: const Color(0xffA4B0BC).withOpacity(0.5),
                                fontSize: 20))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              height: 290,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 60, right: 60, top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                            text: const TextSpan(
                                text: "3.5s",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                                children: [
                              TextSpan(
                                  text: "\n0-60 mph",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14))
                            ])),
                        const SizedBox(
                          width: 65,
                        ),
                        Container(
                          width: 1,
                          height: 57,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey)),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        RichText(
                            text: const TextSpan(
                                text: "150mph",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                                children: [
                              TextSpan(
                                  text: "\nTop Speed",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14))
                            ])),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      "Tesla All-Wheel Drive has two independent motors. Unlike traditional all-wheel drive systems, these two motors digitally control torque to the front and rear wheels—for far better handling and traction control. ",
                      style: TextStyle(color: Color(0xff979797)),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
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
            )
          ],
        ),
      ),
    );
  }
}
