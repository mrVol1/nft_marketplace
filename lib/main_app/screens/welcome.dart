import 'package:flutter/material.dart';
import 'package:nft_marketplace/consts/colors.dart';
import 'package:nft_marketplace/main_app/screens/home.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.darkColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/image_6.png',
              height: 181,
              width: 207,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Hey! Welcome',
              style: TextStyle(
                  fontSize: 34,
                  fontFamily: 'Gilroy_Bold',
                  color: ConstantColors.whiteColor),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Create and Sell your NFT in 1 seconds',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Gilroy_Meduim',
                  color: ConstantColors.whiteColor),
            ),
            const SizedBox(
              height: 300,
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
                Route route =
                    MaterialPageRoute(builder: (context) => const HomeScreen());
                Navigator.push(context, route);
              },
              child: Text(
                'Continue',
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
    );
  }
}
