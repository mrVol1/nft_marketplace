import 'package:flutter/material.dart';
import 'package:nft_marketplace/consts/colors.dart';
import 'package:nft_marketplace/main_app/screens/nft_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 32.0),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/logos_ethereum.png',
                        width: 12.0,
                        height: 20.0,
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Text(
                        '26,031',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ConstantColors.whiteColor,
                          fontFamily: 'Gilroy_Bold',
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Image.asset(
                'assets/images/ellipse_17.png',
                height: 52.0,
                width: 52.0,
              ),
            ],
          ),
          const SizedBox(
            height: 32.0,
          ),
          SizedBox(
            height: 41,
            width: 105,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Trending',
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
                        backgroundColor: MaterialStateProperty.all(
                          ConstantColors.grayColor,
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Art',
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
                        backgroundColor: MaterialStateProperty.all(
                          ConstantColors.grayColor,
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Gamin',
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
                        backgroundColor: MaterialStateProperty.all(
                          ConstantColors.grayColor,
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Music',
                        style: TextStyle(
                          color: ConstantColors.whiteColor,
                          fontFamily: 'Gilroy_Bold',
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 31.0,
          ),
          SizedBox(
            width: 267.0,
            height: 384.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                TextButton(
                  onPressed: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => const ItemScreen());
                    Navigator.push(context, route);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: ConstantColors.grayColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: [
                              SizedBox(
                                height: 259.0,
                                width: 240.0,
                                child: Image.asset(
                                  'assets/images/rectangle_8.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                top: 10,
                                left: 10,
                                right: 10,
                                child: SizedBox(
                                  height: 24.0,
                                  width: 210.0,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 48.0,
                                        height: 22.0,
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(5),
                                          ),
                                          color: ConstantColors.grayColor,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text(
                                            'Art',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Gilroy_Meduim',
                                              fontSize: 12.0,
                                              color: ConstantColors.whiteColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                      OutlinedButton(
                                        style: ButtonStyle(
                                          side: MaterialStateProperty.all(
                                            const BorderSide(
                                              style: BorderStyle.none,
                                            ),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 16.0),
                                          child: Image.asset(
                                            'assets/images/icon_like.png',
                                            width: 24.0,
                                            height: 24.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Mosu #1930',
                                style: TextStyle(
                                    fontFamily: 'Gilroy_Bold',
                                    color: ConstantColors.whiteColor,
                                    fontSize: 16.0),
                              ),
                              const SizedBox(
                                width: 83.0,
                              ),
                              Text(
                                '102d Left',
                                style: TextStyle(
                                  fontFamily: 'Gilroy_Medium',
                                  fontSize: 14.0,
                                  color: ConstantColors.whiteColor,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/images/profile_verified.png',
                                height: 24.0,
                                width: 24.0,
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                'Karafuru',
                                style: TextStyle(
                                    fontFamily: 'Gilroy_Meduim',
                                    color: ConstantColors.whiteColor,
                                    fontSize: 12.0),
                              ),
                              const SizedBox(
                                width: 70.0,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: const Color(0xFF1D9BF0),
                                  ),
                                ),
                                width: 86.0,
                                height: 24.0,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12.0, right: 12.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        'assets/images/logos_ethereum.png',
                                        height: 12.0,
                                        width: 8.0,
                                      ),
                                      const SizedBox(
                                        height: 8.0,
                                      ),
                                      Text(
                                        '2,75 ETH',
                                        style: TextStyle(
                                          color: ConstantColors.whiteColor,
                                          fontFamily: 'Gilroy_Meduim',
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: ConstantColors.grayColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: [
                              SizedBox(
                                height: 259.0,
                                width: 240.0,
                                child: Image.asset(
                                  'assets/images/rectangle_9.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                top: 10,
                                left: 10,
                                right: 10,
                                child: SizedBox(
                                  height: 24.0,
                                  width: 210.0,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 48.0,
                                        height: 22.0,
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(5),
                                          ),
                                          color: ConstantColors.grayColor,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text(
                                            'Art',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Gilroy_Meduim',
                                              fontSize: 12.0,
                                              color: ConstantColors.whiteColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                      OutlinedButton(
                                        style: ButtonStyle(
                                          side: MaterialStateProperty.all(
                                            const BorderSide(
                                              style: BorderStyle.none,
                                            ),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 16.0),
                                          child: Image.asset(
                                            'assets/images/icon_like.png',
                                            width: 24.0,
                                            height: 24.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Mosu #1930',
                                style: TextStyle(
                                    fontFamily: 'Gilroy_Bold',
                                    color: ConstantColors.whiteColor,
                                    fontSize: 16.0),
                              ),
                              const SizedBox(
                                width: 83.0,
                              ),
                              Text(
                                '102d Left',
                                style: TextStyle(
                                  fontFamily: 'Gilroy_Medium',
                                  fontSize: 14.0,
                                  color: ConstantColors.whiteColor,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/images/profile_verified_1.png',
                                height: 24.0,
                                width: 24.0,
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                'Karafuru',
                                style: TextStyle(
                                    fontFamily: 'Gilroy_Meduim',
                                    color: ConstantColors.whiteColor,
                                    fontSize: 12.0),
                              ),
                              const SizedBox(
                                width: 70.0,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: const Color(0xFF1D9BF0),
                                  ),
                                ),
                                width: 86.0,
                                height: 24.0,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12.0, right: 12.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        'assets/images/logos_ethereum.png',
                                        height: 12.0,
                                        width: 8.0,
                                      ),
                                      const SizedBox(
                                        height: 8.0,
                                      ),
                                      Text(
                                        '2,75 ETH',
                                        style: TextStyle(
                                          color: ConstantColors.whiteColor,
                                          fontFamily: 'Gilroy_Meduim',
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Text(
            'Trending Collections',
            style: TextStyle(
                fontFamily: 'Gilroy_Bold',
                fontSize: 24.0,
                color: ConstantColors.whiteColor),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/сollection_rank.png',
                    width: 66.0,
                    height: 66.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ghozali Everyday',
                        style: TextStyle(
                            color: ConstantColors.whiteColor,
                            fontFamily: 'Gilroy_Meduim',
                            fontSize: 14.0),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        'Ghozali_Ghozalu',
                        style: TextStyle(
                            color: ConstantColors.whiteColor,
                            fontFamily: 'Gilroy_Meduim',
                            fontSize: 10.0),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/logos_ethereum.png',
                            width: 12.0,
                            height: 20.0,
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              '4,218',
                              style: TextStyle(
                                  color: ConstantColors.whiteColor,
                                  fontFamily: 'Gilroy_Bold',
                                  fontSize: 14.0),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        '+23,00%',
                        style: TextStyle(
                            color: ConstantColors.greenColor,
                            fontFamily: 'Gilroy_Meduim',
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
                  Image.asset(
                    'assets/images/сollection_pank.png',
                    width: 66.0,
                    height: 66.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cryptopunks',
                        style: TextStyle(
                            color: ConstantColors.whiteColor,
                            fontFamily: 'Gilroy_Meduim',
                            fontSize: 14.0),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        'Unnamed',
                        style: TextStyle(
                            color: ConstantColors.whiteColor,
                            fontFamily: 'Gilroy_Meduim',
                            fontSize: 10.0),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/logos_ethereum.png',
                            width: 12.0,
                            height: 20.0,
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              '4,071',
                              style: TextStyle(
                                  color: ConstantColors.whiteColor,
                                  fontFamily: 'Gilroy_Bold',
                                  fontSize: 14.0),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        '-32,01%',
                        style: TextStyle(
                            color: ConstantColors.redColor,
                            fontFamily: 'Gilroy_Meduim',
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
                  Image.asset(
                    'assets/images/сollection_pank.png',
                    width: 66.0,
                    height: 66.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cryptopunks',
                        style: TextStyle(
                            color: ConstantColors.whiteColor,
                            fontFamily: 'Gilroy_Meduim',
                            fontSize: 14.0),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        'Unnamed',
                        style: TextStyle(
                            color: ConstantColors.whiteColor,
                            fontFamily: 'Gilroy_Meduim',
                            fontSize: 10.0),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/logos_ethereum.png',
                            width: 12.0,
                            height: 20.0,
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              '4,071',
                              style: TextStyle(
                                  color: ConstantColors.whiteColor,
                                  fontFamily: 'Gilroy_Bold',
                                  fontSize: 14.0),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        '-32,01%',
                        style: TextStyle(
                            color: ConstantColors.redColor,
                            fontFamily: 'Gilroy_Meduim',
                            fontSize: 14.0),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
