import 'package:flutter/material.dart';
import 'package:nft_marketplace/consts/colors.dart';
import 'package:nft_marketplace/main_app/screens/art.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.darkColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 62.0, left: 24.0, right: 24.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Search',
                  style: TextStyle(
                      color: ConstantColors.whiteColor,
                      fontFamily: 'Gilroy_Bold',
                      fontSize: 34.0),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Form(
                  child: TextFormField(
                    cursorColor: ConstantColors.whiteColor,
                    decoration: InputDecoration(
                      fillColor: ConstantColors.grayColor,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.search,
                        color: ConstantColors.grayLightColor,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ConstantColors.grayColor,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ConstantColors.whiteColor,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      label: Text(
                        'Search your NFT...',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Gilroy_Meduim',
                            color: ConstantColors.grayLightColor),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Text(
                  'Categories',
                  style: TextStyle(
                      color: ConstantColors.whiteColor,
                      fontFamily: 'Gilroy_Bold',
                      fontSize: 24.0),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                SizedBox(
                  height: 120.0,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      TextButton(
                        onPressed: () {
                          Route route = MaterialPageRoute(
                              builder: (context) => const ArtScreen());
                          Navigator.push(context, route);
                        },
                        child: Stack(
                          children: [
                            SizedBox(
                              width: 130.0,
                              height: 96.0,
                              child: Image.asset(
                                'assets/images/rectangle_10.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 16.0, bottom: 8.0),
                                child: Text(
                                  'Art',
                                  style: TextStyle(
                                      color: ConstantColors.whiteColor,
                                      fontFamily: 'Gilroy_Meduim',
                                      fontSize: 14.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Stack(
                          children: [
                            SizedBox(
                              width: 130.0,
                              height: 96.0,
                              child: Image.asset(
                                'assets/images/rectangle_11.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 16.0, bottom: 8.0),
                                child: Text(
                                  'Collectibles',
                                  style: TextStyle(
                                      color: ConstantColors.whiteColor,
                                      fontFamily: 'Gilroy_Meduim',
                                      fontSize: 14.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Stack(
                          children: [
                            SizedBox(
                              width: 130.0,
                              height: 96.0,
                              child: Image.asset(
                                'assets/images/rectangle_12.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 16.0, bottom: 8.0),
                                child: Text(
                                  'Domain Names',
                                  style: TextStyle(
                                      color: ConstantColors.whiteColor,
                                      fontFamily: 'Gilroy_Meduim',
                                      fontSize: 14.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 36.0,
                ),
                Text(
                  'Featured Collections',
                  style: TextStyle(
                      color: ConstantColors.whiteColor,
                      fontFamily: 'Gilroy_Bold',
                      fontSize: 24.0),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        color: ConstantColors.grayColor,
                      ),
                      width: 160.0,
                      height: 152.0,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            'assets/images/rectangle_13.png',
                            alignment: Alignment.topCenter,
                          ),
                          Positioned(
                            top: 22.0,
                            left: 52.0,
                            child: Image.asset(
                              'assets/images/profile_verified_2.png',
                              width: 44.0,
                              height: 46.0,
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'DourDarcels',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ConstantColors.whiteColor,
                                  fontFamily: 'Gilroy_Meduim',
                                  fontSize: 12.0),
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 98.0,
                                left: 10.0,
                                right: 10.0,
                                bottom: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Items',
                                      style: TextStyle(
                                          color: ConstantColors.grayLightColor,
                                          fontFamily: 'Gilroy_Meduim',
                                          fontSize: 12.0),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      '10K',
                                      style: TextStyle(
                                          color: ConstantColors.whiteColor,
                                          fontFamily: 'Gilroy_Meduim',
                                          fontSize: 16.0),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Owners',
                                      style: TextStyle(
                                          color: ConstantColors.grayLightColor,
                                          fontFamily: 'Gilroy_Meduim',
                                          fontSize: 12.0),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      '4,93K',
                                      style: TextStyle(
                                          color: ConstantColors.whiteColor,
                                          fontFamily: 'Gilroy_Meduim',
                                          fontSize: 16.0),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        color: ConstantColors.grayColor,
                      ),
                      width: 160.0,
                      height: 152.0,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            'assets/images/rectangle_14.png',
                            alignment: Alignment.topCenter,
                          ),
                          Positioned(
                            top: 22.0,
                            left: 52.0,
                            child: Image.asset(
                              'assets/images/profile_verified_3.png',
                              width: 44.0,
                              height: 46.0,
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'CyberBrokersDeployer',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ConstantColors.whiteColor,
                                  fontFamily: 'Gilroy_Meduim',
                                  fontSize: 12.0),
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 98.0,
                                left: 10.0,
                                right: 10.0,
                                bottom: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Items',
                                      style: TextStyle(
                                          color: ConstantColors.grayLightColor,
                                          fontFamily: 'Gilroy_Meduim',
                                          fontSize: 12.0),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      '10K',
                                      style: TextStyle(
                                          color: ConstantColors.whiteColor,
                                          fontFamily: 'Gilroy_Meduim',
                                          fontSize: 16.0),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Owners',
                                      style: TextStyle(
                                          color: ConstantColors.grayLightColor,
                                          fontFamily: 'Gilroy_Meduim',
                                          fontSize: 12.0),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      '4,93K',
                                      style: TextStyle(
                                          color: ConstantColors.whiteColor,
                                          fontFamily: 'Gilroy_Meduim',
                                          fontSize: 16.0),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        color: ConstantColors.grayColor,
                      ),
                      width: 160.0,
                      height: 152.0,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            'assets/images/rectangle_15.png',
                            alignment: Alignment.topCenter,
                          ),
                          Positioned(
                            top: 22.0,
                            left: 52.0,
                            child: Image.asset(
                              'assets/images/profile_verified_4.png',
                              width: 44.0,
                              height: 46.0,
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'DourDarcels',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ConstantColors.whiteColor,
                                  fontFamily: 'Gilroy_Meduim',
                                  fontSize: 12.0),
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 98.0,
                                left: 10.0,
                                right: 10.0,
                                bottom: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Items',
                                      style: TextStyle(
                                          color: ConstantColors.grayLightColor,
                                          fontFamily: 'Gilroy_Meduim',
                                          fontSize: 12.0),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      '10K',
                                      style: TextStyle(
                                          color: ConstantColors.whiteColor,
                                          fontFamily: 'Gilroy_Meduim',
                                          fontSize: 16.0),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Owners',
                                      style: TextStyle(
                                          color: ConstantColors.grayLightColor,
                                          fontFamily: 'Gilroy_Meduim',
                                          fontSize: 12.0),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      '4,93K',
                                      style: TextStyle(
                                          color: ConstantColors.whiteColor,
                                          fontFamily: 'Gilroy_Meduim',
                                          fontSize: 16.0),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        color: ConstantColors.grayColor,
                      ),
                      width: 160.0,
                      height: 152.0,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            'assets/images/rectangle_14.png',
                            alignment: Alignment.topCenter,
                          ),
                          Positioned(
                            top: 22.0,
                            left: 52.0,
                            child: Image.asset(
                              'assets/images/profile_verified_3.png',
                              width: 44.0,
                              height: 46.0,
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'CyberBrokersDeployer',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ConstantColors.whiteColor,
                                  fontFamily: 'Gilroy_Meduim',
                                  fontSize: 12.0),
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 98.0,
                                left: 10.0,
                                right: 10.0,
                                bottom: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Items',
                                      style: TextStyle(
                                          color: ConstantColors.grayLightColor,
                                          fontFamily: 'Gilroy_Meduim',
                                          fontSize: 12.0),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      '10K',
                                      style: TextStyle(
                                          color: ConstantColors.whiteColor,
                                          fontFamily: 'Gilroy_Meduim',
                                          fontSize: 16.0),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Owners',
                                      style: TextStyle(
                                          color: ConstantColors.grayLightColor,
                                          fontFamily: 'Gilroy_Meduim',
                                          fontSize: 12.0),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      '4,93K',
                                      style: TextStyle(
                                          color: ConstantColors.whiteColor,
                                          fontFamily: 'Gilroy_Meduim',
                                          fontSize: 16.0),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
