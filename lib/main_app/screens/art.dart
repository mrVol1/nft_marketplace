import 'package:flutter/material.dart';
import 'package:nft_marketplace/consts/colors.dart';

class ArtScreen extends StatefulWidget {
  const ArtScreen({Key? key}) : super(key: key);

  @override
  State<ArtScreen> createState() => _ArtScreenState();
}

class _ArtScreenState extends State<ArtScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.darkColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 24.0,
                height: 24.0,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                  color: ConstantColors.darkColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios,
                        color: ConstantColors.whiteColor),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                    color: ConstantColors.darkColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: IconButton(
                      icon: Icon(Icons.share, color: ConstantColors.whiteColor),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            ],
            expandedHeight: 191.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('assets/images/banner_photo_1.png',
                  fit: BoxFit.fill),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 24.0,
                      ),
                      _artText(),
                      const SizedBox(
                        height: 32.0,
                      ),
                      _gridArt(),
                    ],
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }

  Widget _artText() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Art',
            style: TextStyle(
              fontFamily: 'Gilroy_Bold',
              fontSize: 34,
              color: ConstantColors.whiteColor,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            'Karafuru is home to 5,555 generative arts where colors\nreign supreme. Leave the drab reality and enter the\nworld of Karafuru by Museum of Toys.',
            style: TextStyle(
              color: ConstantColors.grayLightColor,
              fontFamily: 'Gilroy_Meduim',
              fontSize: 12,
            ),
          ),
        ]);
  }

  Widget _gridArt() {
    return Column(
      children: [
        Text(
          'Featured Collections',
          style: TextStyle(
            fontFamily: 'Gilroy_Bold',
            fontSize: 34,
            color: ConstantColors.whiteColor,
          ),
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
                        top: 98.0, left: 10.0, right: 10.0, bottom: 16.0),
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
                        top: 98.0, left: 10.0, right: 10.0, bottom: 16.0),
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
                        top: 98.0, left: 10.0, right: 10.0, bottom: 16.0),
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
                        top: 98.0, left: 10.0, right: 10.0, bottom: 16.0),
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
                        top: 98.0, left: 10.0, right: 10.0, bottom: 16.0),
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
                        top: 98.0, left: 10.0, right: 10.0, bottom: 16.0),
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
    );
  }
}
