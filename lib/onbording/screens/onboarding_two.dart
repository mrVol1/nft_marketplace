import 'package:flutter/material.dart';
import 'package:nft_marketplace/consts/colors.dart';
import 'package:nft_marketplace/onbording/screens/onboarding_three.dart';

class OnboardingScreenTwo extends StatelessWidget {
  const OnboardingScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.darkColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 122.0),
            child: Center(
              child: Image.asset(
                'assets/images/image_5.png',
                height: 207.0,
                width: 207.0,
              ),
            ),
          ),
          const SizedBox(
            height: 104.0,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                color: ConstantColors.grayColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Start your own \n NFT gallery now',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Gilroy_Bold',
                        fontSize: 34.0,
                        color: ConstantColors.whiteColor,
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      'Buy and sell digital items',
                      style: TextStyle(
                        fontFamily: 'Gilroy_Meduim',
                        fontSize: 16.0,
                        color: ConstantColors.whiteColor,
                      ),
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 8.0,
                          width: 8.0,
                          decoration: BoxDecoration(
                            color: ConstantColors.darkColor,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Container(
                          height: 8.0,
                          width: 8.0,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: ConstantColors.whiteColor,
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Container(
                          height: 8.0,
                          width: 8.0,
                          decoration: BoxDecoration(
                            color: ConstantColors.darkColor,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 80.0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(312.0, 49.0),
                        side: BorderSide(
                          color: ConstantColors.blueColor,
                        ),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Route route = MaterialPageRoute(
                          builder: (context) => const OnboardingScreenThree(),
                        );
                        Navigator.push(context, route);
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: ConstantColors.whiteColor,
                          fontFamily: 'Gilroy_Bold',
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
