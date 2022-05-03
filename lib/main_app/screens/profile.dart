import 'package:flutter/material.dart';
import 'package:nft_marketplace/consts/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  static List<Tab> myTabs = <Tab>[
    Tab(
      child: Text(
        'Collected',
        style: TextStyle(
          color: ConstantColors.whiteColor,
          fontFamily: 'Gilroy_Bold',
          fontSize: 24,
        ),
      ),
    ),
    Tab(
      child: Text(
        'Created',
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
    Tab(
      child: Text(
        'Favorited',
        style: TextStyle(
          color: ConstantColors.whiteColor,
          fontFamily: 'Gilroy_Bold',
          fontSize: 24,
        ),
      ),
    ),
    Tab(
      child: Text(
        'Offers Made',
        style: TextStyle(
          color: ConstantColors.whiteColor,
          fontFamily: 'Gilroy_Bold',
          fontSize: 24,
        ),
      ),
    ),
    Tab(
      child: Text(
        'Offers Received',
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
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // width: 16.0,
                  // height: 16.0,
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
              background: Image.asset('assets/images/banner_photo.png',
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
                      _photoProfile(),
                      const SizedBox(
                        height: 8.0,
                      ),
                      _namePerson(),
                      const SizedBox(
                        height: 8.0,
                      ),
                      _contactInfo(),
                      const SizedBox(
                        height: 24.0,
                      ),
                      Text(
                        'Sell anything',
                        style: TextStyle(
                            color: ConstantColors.grayLightColor,
                            fontFamily: 'Gilroy_Meduim',
                            fontSize: 12.0),
                      ),
                      const SizedBox(
                        height: 55.0,
                      ),
                      _totalInfo(),
                      const SizedBox(
                        height: 32.0,
                      ),
                      _tabBar(),
                      const SizedBox(
                        height: 18.0,
                      ),
                      _tabBarView(),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _photoProfile() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/images/profile_verified_5.png',
          height: 92.0,
          width: 88.0,
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              ConstantColors.darkColor,
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: ConstantColors.whiteColor),
              ),
            ),
          ),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Edit Profile',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ConstantColors.whiteColor,
                fontFamily: 'Gilroy_Bold',
                fontSize: 14.0,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _namePerson() {
    return SizedBox(
      child: Text(
        'Kevin',
        style: TextStyle(
            color: ConstantColors.whiteColor,
            fontFamily: 'Gilroy_Bold',
            fontSize: 24.0),
      ),
    );
  }

  Widget _contactInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/images/icon_copy.png',
          height: 24.0,
          width: 24.0,
        ),
        const SizedBox(
          width: 8.0,
        ),
        Text(
          '0x841a...8a57',
          style: TextStyle(
              color: ConstantColors.grayLightColor,
              fontFamily: 'Gilroy_Meduim',
              fontSize: 12.0),
        ),
        const SizedBox(
          width: 60.0,
        ),
        SizedBox(
          height: 48.0,
          width: 48.0,
          child: TextButton(
            onPressed: () {},
            child: Image.asset(
              'assets/images/world.png',
              width: 24.0,
              height: 24.0,
            ),
          ),
        ),
        SizedBox(
          height: 48.0,
          width: 48.0,
          child: TextButton(
            onPressed: () {},
            child: Image.asset(
              'assets/images/instagram-filled.png',
              width: 24.0,
              height: 24.0,
            ),
          ),
        ),
        SizedBox(
          height: 48.0,
          width: 48.0,
          child: TextButton(
            onPressed: () {},
            child: Image.asset(
              'assets/images/twitter-fill.png',
              width: 24.0,
              height: 24.0,
            ),
          ),
        ),
      ],
    );
  }

  Widget _totalInfo() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '54',
          style: TextStyle(
              color: ConstantColors.whiteColor,
              fontFamily: 'Gilroy_Bold',
              fontSize: 16.0),
        ),
        const SizedBox(
          width: 8.0,
        ),
        Text(
          'Items Total',
          style: TextStyle(
              color: ConstantColors.grayLightColor,
              fontFamily: 'Gilroy_Meduim',
              fontSize: 12.0),
        ),
        const SizedBox(
          width: 24.0,
        ),
        Text(
          '3,7K',
          style: TextStyle(
              color: ConstantColors.whiteColor,
              fontFamily: 'Gilroy_Bold',
              fontSize: 16.0),
        ),
        const SizedBox(
          width: 8.0,
        ),
        Text(
          'Views',
          style: TextStyle(
              color: ConstantColors.grayLightColor,
              fontFamily: 'Gilroy_Meduim',
              fontSize: 12.0),
        ),
        const SizedBox(
          width: 24.0,
        ),
        Text(
          '1,2K',
          style: TextStyle(
              color: ConstantColors.whiteColor,
              fontFamily: 'Gilroy_Bold',
              fontSize: 16.0),
        ),
        const SizedBox(
          width: 8.0,
        ),
        Text(
          'Liked',
          style: TextStyle(
              color: ConstantColors.grayLightColor,
              fontFamily: 'Gilroy_Meduim',
              fontSize: 12.0),
        ),
      ],
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
    return const Icon(Icons.abc);
  }
}
