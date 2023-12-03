import 'package:flutter/material.dart';

import '../services/constants/images.dart';
import 'fifth_page.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,

      ///#Body
      body: Stack(
        children: [
          Image.asset(
            CustomImages.nav,
            height: 500,
            width: 500,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20,
          ),

          ///container
          Padding(
            padding: const EdgeInsets.only(top: 380),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              height: 250,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30, top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                            text: const TextSpan(
                                text: "Full Self-Driving",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                                children: [
                              TextSpan(
                                  text: "\n\$5,000",
                                  style: TextStyle(
                                      color: Color(0xffD01000), fontSize: 16))
                            ])),
                        const SizedBox(
                          width: 60,
                        ),
                        RichText(
                            text: TextSpan(
                                text: "Autopilot",
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontSize: 20,
                                ),
                                children: const [
                              TextSpan(
                                  text: "\n\$3,000",
                                  style: TextStyle(
                                      color: Color(0xffA4B0BC), fontSize: 14))
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
                      "Atomatic driving from highway on-rampto off-ramp including interchanges and overtaking slower cars.",
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
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const FifthPage()));
                          },
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
