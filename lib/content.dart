import 'package:flutter/material.dart';

import 'custom_text.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              const CustomText(
                text: '4725 7462 8472 8596',
                fontSize: 28,
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Expiry Date'.toUpperCase(),
                        withOpacity: true,
                      ),
                      const CustomText(text: '10/2027'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Card Holder Name'.toUpperCase(),
                        withOpacity: true,
                      ),
                      const CustomText(text: 'Eliezer António'),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.4),
              shape: BoxShape.circle,
            ),
          ),
          Positioned(
            left: 8,
            child: Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
