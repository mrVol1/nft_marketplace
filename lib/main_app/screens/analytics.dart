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
            const SizedBox(
              height: 24.0,
            ),
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
    return SizedBox(
      width: 250,
      height: 250,
      child: TabBarView(
        controller: _tabController,
        children: myTabs.map((Tab tab) {
          return ListView(
            children: [
              _filters(context),
              const Divider(),
              _activityTabs(),
            ],
          );
        }).toList(),
      ),
    );
  }

  late int _value = 1;
  Widget _filters(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DropdownButton<int>(
            icon: const Icon(Icons.arrow_drop_down),
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
            ]),
      ],
    );
  }

  Widget _activityTabs() {
    return Icon(Icons.abc);
  }
}
