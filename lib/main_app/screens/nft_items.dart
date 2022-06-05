import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_marketplace/consts/colors.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.darkColor,
      appBar: AppBar(
        backgroundColor: ConstantColors.darkColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_alt),
          ),
          const SizedBox(
            width: 12.0,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share_rounded),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 312.0,
                  height: 344.0,
                  child: Image.asset('assets/images/rectangle_8.png'),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Karafuru',
                      style: TextStyle(
                        color: ConstantColors.whiteColor,
                        fontSize: 16.0,
                        fontFamily: 'Gilroy_Meduim',
                      ),
                    ),
                    const SizedBox(
                      width: 2.0,
                    ),
                    Image.asset(
                      'assets/images/ic_round-verified.png',
                      width: 24.0,
                      height: 24.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Text(
                  'Mosu #1930',
                  style: TextStyle(
                      color: ConstantColors.whiteColor,
                      fontSize: 34.0,
                      fontFamily: 'Gilroy_Bold'),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/ellipse_17_1.png',
                      height: 40.0,
                      width: 40.0,
                    ),
                    const SizedBox(
                      width: 2.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Created by',
                          style: TextStyle(
                              color: ConstantColors.grayLightColor,
                              fontSize: 10,
                              fontFamily: 'Gilroy_Meduim'),
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          'KarafuruDeployer',
                          style: TextStyle(
                              color: ConstantColors.whiteColor,
                              fontSize: 12.0,
                              fontFamily: 'Gilroy_Meduim'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 30.0,
                    ),
                    Image.asset(
                      'assets/images/ellipse_17_2.png',
                      height: 40.0,
                      width: 40.0,
                    ),
                    const SizedBox(
                      width: 2.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Owned by',
                          style: TextStyle(
                              color: ConstantColors.grayLightColor,
                              fontSize: 10,
                              fontFamily: 'Gilroy_Meduim'),
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          'Wakanabe420',
                          style: TextStyle(
                              color: ConstantColors.whiteColor,
                              fontSize: 12.0,
                              fontFamily: 'Gilroy_Meduim'),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Text(
                  'Karafuru is home to 5,555 generative arts where colors\nreign supreme. Leave the drab reality and enter the\nworld of Karafuru by Museum of Toys.',
                  style: TextStyle(
                    color: ConstantColors.whiteColor,
                    fontSize: 12.0,
                    fontFamily: 'Gilroy_Meduim',
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Current Bid',
                          style: TextStyle(
                            color: ConstantColors.grayLightColor,
                            fontSize: 10.0,
                            fontFamily: 'Gilroy_Meduim',
                          ),
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/logos_ethereum.png',
                              height: 10.0,
                              width: 12.0,
                            ),
                            const SizedBox(
                              width: 2.0,
                            ),
                            Text(
                              '2,74 ETH',
                              style: TextStyle(
                                  color: ConstantColors.whiteColor,
                                  fontSize: 12.0,
                                  fontFamily: 'Gilroy_Meduim'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
