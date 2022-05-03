import 'package:flutter/material.dart';
import 'package:nft_marketplace/consts/colors.dart';
import 'package:nft_marketplace/main_app/screens/connect_with_wallet.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.darkColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _logo(),
            _image_10(),
            _text(),
            _buttons(context),
          ],
        ),
      ),
    );
  }

  Widget _logo() {
    return Padding(
      padding: const EdgeInsets.only(top: 42, left: 24),
      child: Image.asset(
        'assets/images/Logo.png',
        alignment: Alignment.topLeft,
        width: 123,
        height: 28,
      ),
    );
  }

  Center _image_10() {
    return Center(
      child: Image.asset(
        'assets/images/image_10.png',
        height: 207.0,
        width: 207.0,
      ),
    );
  }

  Widget _text() {
    return Container(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'All NFTs are\ncertifiably unique\nand ownable',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: 'Gilroy_Bold',
              fontSize: 34.0,
              color: ConstantColors.whiteColor,
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          Text(
            'A credible and excellent marketplace for\nnon-fungible token.',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: 'Gilroy_Meduim',
              fontSize: 16.0,
              color: ConstantColors.grayLightColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buttons(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(250.0, 49.0),
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
                builder: (context) => const ConnectWithWallet(),
              );
              Navigator.push(context, route);
            },
            child: Text(
              'Connect with Wallet',
              style: TextStyle(
                color: ConstantColors.whiteColor,
                fontFamily: 'Gilroy_Bold',
                fontSize: 14.0,
              ),
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),
          ElevatedButton(
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(
                const Size(66.0, 49.0),
              ),
              backgroundColor:
                  MaterialStateProperty.all(ConstantColors.darkColor),
              side: MaterialStateProperty.all(
                BorderSide(
                  color: ConstantColors.whiteColor,
                  width: 1,
                ),
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            onPressed: () {},
            child: Icon(Icons.arrow_right, color: ConstantColors.whiteColor),
          ),
        ],
      ),
    );
  }
}
