import 'package:flutter/material.dart';
import 'package:nft_marketplace/consts/colors.dart';
import 'package:nft_marketplace/main_app/screens/setup_profile.dart';

class ConnectWithWallet extends StatelessWidget {
  const ConnectWithWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.darkColor,
      appBar: AppBar(
        backgroundColor: ConstantColors.darkColor,
        title: Image.asset(
          'assets/images/Logo.png',
          width: 121.0,
          height: 40.0,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              _image_10(),
              const SizedBox(
                height: 16.0,
              ),
              _textWallet(),
              const SizedBox(
                height: 30.0,
              ),
              _listWallets(context),
              const SizedBox(
                height: 64.0,
              ),
              _continueButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _image_10() {
    return Image.asset(
      'assets/images/image_10.png',
      width: 207.0,
      height: 207.0,
    );
  }

  Widget _textWallet() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Choose your wallet',
          style: TextStyle(
              color: ConstantColors.whiteColor,
              fontFamily: 'Gilroy_Bold',
              fontSize: 34.0),
        ),
        const SizedBox(
          height: 16.0,
        ),
        Text(
          'By connecting your wallet you agree to \n our Terms of Service and Privacy Policy',
          style: TextStyle(
              color: ConstantColors.grayLightColor,
              fontFamily: 'Gilroy_Meduim',
              fontSize: 16.0),
        ),
      ],
    );
  }

  Widget _listWallets(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(ConstantColors.grayColor),
            alignment: Alignment.center,
            fixedSize: MaterialStateProperty.all(
              const Size(312, 56),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          onPressed: () {},
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/metamask_image.png',
                width: 32.0,
                height: 32.0,
              ),
              const SizedBox(
                width: 12.0,
              ),
              Text(
                'MetaMask',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: ConstantColors.whiteColor,
                    fontFamily: 'Gilroy_Bold',
                    fontSize: 14.0),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(ConstantColors.grayColor),
            alignment: Alignment.center,
            fixedSize: MaterialStateProperty.all(
              const Size(312, 56),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          onPressed: () {},
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/trust_wallet.png',
                width: 32.0,
                height: 32.0,
              ),
              const SizedBox(
                width: 12.0,
              ),
              Text(
                'Trust Wallet',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: ConstantColors.whiteColor,
                    fontFamily: 'Gilroy_Bold',
                    fontSize: 14.0),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(ConstantColors.grayColor),
            alignment: Alignment.center,
            fixedSize: MaterialStateProperty.all(
              const Size(312, 56),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: ConstantColors.darkColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              context: context,
              builder: (BuildContext context) {
                return Container(
                  alignment: Alignment.bottomCenter,
                  height: 270.0,
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Enter ethereum address',
                          style: TextStyle(
                              color: ConstantColors.whiteColor,
                              fontFamily: 'Gilroy_Bold',
                              fontSize: 24.0),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        TextFormField(
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
                              'Address',
                              style: TextStyle(
                                  color: ConstantColors.whiteColor,
                                  fontFamily: 'Gilroy_Bold',
                                  fontSize: 14.0),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(340.0, 49.0),
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
                                builder: (context) => const SetupProfile());
                            Navigator.push(context, route);
                          },
                          child: Text(
                            'Confirm',
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
              },
            );
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/bx_link-alt.png',
                width: 32.0,
                height: 32.0,
              ),
              const SizedBox(
                width: 12.0,
              ),
              Text(
                'Enter ethereum address',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: ConstantColors.whiteColor,
                    fontFamily: 'Gilroy_Bold',
                    fontSize: 14.0),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _continueButton(BuildContext context) {
    return ElevatedButton(
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
      onPressed: () {},
      child: Text(
        'Continue',
        style: TextStyle(
          color: ConstantColors.whiteColor,
          fontFamily: 'Gilroy_Bold',
          fontSize: 14.0,
        ),
      ),
    );
  }
}
