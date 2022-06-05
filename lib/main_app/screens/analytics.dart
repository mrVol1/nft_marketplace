import 'package:flutter/material.dart';
import 'package:nft_marketplace/consts/colors.dart';

class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({Key? key}) : super(key: key);

  @override
  State<AnalyticsPage> createState() => _AnalyticsPageState();
}

class _AnalyticsPageState extends State<AnalyticsPage>
    with TickerProviderStateMixin {
  static List<Tab> myTabs = <Tab>[
    Tab(
      child: Text(
        'Rankings',
        style: TextStyle(
          color: ConstantColors.whiteColor,
          fontFamily: 'Gilroy_Bold',
          fontSize: 24,
        ),
      ),
    ),
    Tab(
      child: Text(
        'Activity',
        style: TextStyle(
          color: ConstantColors.whiteColor,
          fontFamily: 'Gilroy_Bold',
          fontSize: 24,
        ),
      ),
    ),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: myTabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.darkColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 62.0, left: 24.0, right: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _textAnalytics(),
            const SizedBox(
              height: 24.0,
            ),
            _tabBar(),
            _tabBarView(),
          ],
        ),
      ),
    );
  }

  Widget _textAnalytics() {
    return Text(
      'Analytics',
      style: TextStyle(
          color: ConstantColors.whiteColor,
          fontFamily: 'Gilroy_Bold',
          fontSize: 34.0),
    );
  }

  Widget _tabBar() {
    return TabBar(
      controller: _tabController,
      isScrollable: true,
      tabs: myTabs,
    );
  }

  Widget _tabBarView() {
    return Expanded(
      child: TabBarView(
        controller: _tabController,
        children: myTabs.map((Tab tab) {
          return Column(
            children: [
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _filters(context),
                  const SizedBox(
                    width: 12.0,
                  ),
                  _chains(context),
                ],
              ),
              _activityTabs(),
            ],
          );
        }).toList(),
      ),
    );
  }

  late int _value = 1;
  Widget _filters(BuildContext context) {
    return Container(
      height: 45.0,
      width: 165.0,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: ConstantColors.grayColor,
        border: Border.all(color: ConstantColors.grayColor),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<int>(
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
          icon: const Icon(Icons.arrow_drop_down_sharp),
          value: _value,
          style: TextStyle(
              color: ConstantColors.grayLightColor,
              fontFamily: 'Gilroy_Meduim',
              fontSize: 12.0),
          underline: Container(
            height: 2,
            color: ConstantColors.grayLightColor,
          ),
          onChanged: (value) {
            setState(() {
              _value = value!;
            });
          },
          items: const [
            DropdownMenuItem(
              child: Text('All Categories'),
              value: 1,
            ),
            DropdownMenuItem(
              child: Text('Images'),
              value: 2,
            ),
            DropdownMenuItem(child: Text('Music'), value: 3),
            DropdownMenuItem(child: Text('New Content'), value: 4)
          ],
        ),
      ),
    );
  }

  late int _value1 = 1;
  Widget _chains(BuildContext context) {
    return Container(
      height: 45.0,
      width: 165.0,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: ConstantColors.grayColor,
        border: Border.all(color: ConstantColors.grayColor),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<int>(
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
          icon: const Icon(Icons.arrow_drop_down_sharp),
          value: _value1,
          style: TextStyle(
              color: ConstantColors.grayLightColor,
              fontFamily: 'Gilroy_Meduim',
              fontSize: 12.0),
          underline: Container(
            height: 2,
            color: ConstantColors.grayLightColor,
          ),
          onChanged: (value) {
            setState(() {
              _value1 = value!;
            });
          },
          items: const [
            DropdownMenuItem(
              child: Text('All Chains'),
              value: 1,
            ),
            DropdownMenuItem(
              child: Text('Images'),
              value: 2,
            ),
            DropdownMenuItem(child: Text('Music'), value: 3),
            DropdownMenuItem(child: Text('New Content'), value: 4)
          ],
        ),
      ),
    );
  }

  Widget _activityTabs() {
    return SizedBox(
      width: 600.0,
      height: 509.0,
      child: ListView(
        children: [
          Container(
            height: 129.0,
            width: 312.0,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(10.0),
              ),
              color: ConstantColors.grayColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '01',
                        style: TextStyle(
                          color: ConstantColors.whiteColor,
                          fontFamily: 'Gilroy_Meduim',
                          fontSize: 16.0,
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Image.asset(
                        'assets/images/Profile_Verified_01.png',
                        height: 45.0,
                        width: 45.0,
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        'Bored Ape Yacht Club',
                        style: TextStyle(
                            color: ConstantColors.whiteColor,
                            fontFamily: 'Gilroy_Meduim',
                            fontSize: 14),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/logos_ethereum.png',
                                height: 10,
                                width: 14,
                              ),
                              const SizedBox(
                                width: 2.0,
                              ),
                              Text(
                                '12339,71',
                                style: TextStyle(
                                    color: ConstantColors.whiteColor,
                                    fontSize: 14.0,
                                    fontFamily: 'Gilroy_Meduim'),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            '202,24%',
                            style: TextStyle(
                                fontFamily: 'Gilroy_Meduim',
                                color: ConstantColors.greenColor,
                                fontSize: 14.0),
                          ),
                        ],
                      ),
                    ],
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
                            '24h%',
                            style: TextStyle(
                                color: ConstantColors.grayLightColor,
                                fontSize: 12.0,
                                fontFamily: 'Gilroy_Meduim'),
                          ),
                          const SizedBox(
                            height: 2.0,
                          ),
                          Text(
                            '11,3%',
                            style: TextStyle(
                                color: ConstantColors.greenColor,
                                fontSize: 14.0,
                                fontFamily: 'Gilroy_Meduim'),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Floor Price',
                            style: TextStyle(
                                color: ConstantColors.grayLightColor,
                                fontSize: 12.0,
                                fontFamily: 'Gilroy_Meduim'),
                          ),
                          const SizedBox(
                            height: 2.0,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/logos_ethereum.png',
                                height: 10,
                                width: 14,
                              ),
                              const SizedBox(
                                width: 2.0,
                              ),
                              Text(
                                '96,68',
                                style: TextStyle(
                                    color: ConstantColors.whiteColor,
                                    fontSize: 14.0,
                                    fontFamily: 'Gilroy_Meduim'),
                              ),
                            ],
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
                                fontSize: 12.0,
                                fontFamily: 'Gilroy_Meduim'),
                          ),
                          const SizedBox(
                            height: 2.0,
                          ),
                          Text(
                            '6,38K',
                            style: TextStyle(
                                color: ConstantColors.whiteColor,
                                fontSize: 14.0,
                                fontFamily: 'Gilroy_Meduim'),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Items',
                            style: TextStyle(
                                color: ConstantColors.grayLightColor,
                                fontSize: 12.0,
                                fontFamily: 'Gilroy_Meduim'),
                          ),
                          const SizedBox(
                            height: 2.0,
                          ),
                          Text(
                            '10K',
                            style: TextStyle(
                                color: ConstantColors.whiteColor,
                                fontSize: 14.0,
                                fontFamily: 'Gilroy_Meduim'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Container(
            height: 129.0,
            width: 312.0,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(10.0),
              ),
              color: ConstantColors.grayColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '01',
                        style: TextStyle(
                          color: ConstantColors.whiteColor,
                          fontFamily: 'Gilroy_Meduim',
                          fontSize: 16.0,
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Image.asset(
                        'assets/images/Profile_Verified_02.png',
                        height: 45.0,
                        width: 45.0,
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        'Cryptopunks',
                        style: TextStyle(
                            color: ConstantColors.whiteColor,
                            fontFamily: 'Gilroy_Meduim',
                            fontSize: 14),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/logos_ethereum.png',
                                height: 10,
                                width: 14,
                              ),
                              const SizedBox(
                                width: 2.0,
                              ),
                              Text(
                                '11325,08',
                                style: TextStyle(
                                    color: ConstantColors.whiteColor,
                                    fontSize: 14.0,
                                    fontFamily: 'Gilroy_Meduim'),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            '204,10%',
                            style: TextStyle(
                                fontFamily: 'Gilroy_Meduim',
                                color: ConstantColors.greenColor,
                                fontSize: 14.0),
                          ),
                        ],
                      ),
                    ],
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
                            '24h%',
                            style: TextStyle(
                                color: ConstantColors.grayLightColor,
                                fontSize: 12.0,
                                fontFamily: 'Gilroy_Meduim'),
                          ),
                          const SizedBox(
                            height: 2.0,
                          ),
                          const Text(
                            '-76,51%',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 14.0,
                                fontFamily: 'Gilroy_Meduim'),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Floor Price',
                            style: TextStyle(
                                color: ConstantColors.grayLightColor,
                                fontSize: 12.0,
                                fontFamily: 'Gilroy_Meduim'),
                          ),
                          const SizedBox(
                            height: 2.0,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/logos_ethereum.png',
                                height: 10,
                                width: 14,
                              ),
                              const SizedBox(
                                width: 2.0,
                              ),
                              Text(
                                '96,68',
                                style: TextStyle(
                                    color: ConstantColors.whiteColor,
                                    fontSize: 14.0,
                                    fontFamily: 'Gilroy_Meduim'),
                              ),
                            ],
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
                                fontSize: 12.0,
                                fontFamily: 'Gilroy_Meduim'),
                          ),
                          const SizedBox(
                            height: 2.0,
                          ),
                          Text(
                            '3,43K',
                            style: TextStyle(
                                color: ConstantColors.whiteColor,
                                fontSize: 14.0,
                                fontFamily: 'Gilroy_Meduim'),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Items',
                            style: TextStyle(
                                color: ConstantColors.grayLightColor,
                                fontSize: 12.0,
                                fontFamily: 'Gilroy_Meduim'),
                          ),
                          const SizedBox(
                            height: 2.0,
                          ),
                          Text(
                            '10K',
                            style: TextStyle(
                                color: ConstantColors.whiteColor,
                                fontSize: 14.0,
                                fontFamily: 'Gilroy_Meduim'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
