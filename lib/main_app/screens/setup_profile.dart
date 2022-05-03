import 'package:flutter/material.dart';
import 'package:nft_marketplace/consts/colors.dart';
import 'package:nft_marketplace/main_app/screens/home.dart';

class SetupProfile extends StatelessWidget {
  const SetupProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.darkColor,
      appBar: AppBar(
        backgroundColor: ConstantColors.darkColor,
        title: Text(
          'Setup Profile',
          style: TextStyle(
              color: ConstantColors.whiteColor,
              fontFamily: 'Gilroy_Bold',
              fontSize: 24.0),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            _uploadPhoto(),
            const SizedBox(
              height: 32.0,
            ),
            _textForm(),
            const SizedBox(
              height: 74.0,
            ),
            _submitButton(context),
          ],
        ),
      ),
    );
  }

  Widget _uploadPhoto() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Upload Photo Profile',
          style: TextStyle(
            color: ConstantColors.whiteColor,
            fontFamily: 'Gilroy_Meduim',
            fontSize: 16.0,
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/ellipse_14.png',
              width: 148.0,
              height: 148.0,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                fixedSize: const Size(148.0, 49.0),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                primary: ConstantColors.whiteColor,
                backgroundColor: ConstantColors.darkColor,
                side: BorderSide(color: ConstantColors.whiteColor, width: 1),
              ),
              onPressed: () {},
              child: Text(
                'Upload Profile',
                style: TextStyle(
                    fontFamily: 'Gilroy_Meduim',
                    fontSize: 14.0,
                    color: ConstantColors.whiteColor),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _textForm() {
    return Form(
      child: Column(
        children: [
          TextFormField(
            cursorColor: ConstantColors.whiteColor,
            decoration: InputDecoration(
              fillColor: ConstantColors.grayColor,
              filled: true,
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
                'Username',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Gilroy_Meduim',
                    color: ConstantColors.grayLightColor),
              ),
            ),
          ),
          const SizedBox(
            height: 32.0,
          ),
          TextFormField(
            cursorColor: ConstantColors.whiteColor,
            decoration: InputDecoration(
              fillColor: ConstantColors.grayColor,
              filled: true,
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
                'Email',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Gilroy_Meduim',
                    color: ConstantColors.grayLightColor),
              ),
            ),
          ),
          const SizedBox(
            height: 32.0,
          ),
          TextFormField(
            maxLines: 4,
            cursorColor: ConstantColors.whiteColor,
            decoration: InputDecoration(
              fillColor: ConstantColors.grayColor,
              filled: true,
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
                'Bio',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Gilroy_Meduim',
                    color: ConstantColors.grayLightColor),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _submitButton(BuildContext context) {
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
      onPressed: () {
        Route route = MaterialPageRoute(builder: (context) => HomeScreen());
        Navigator.push(context, route);
      },
      child: Text(
        'Submit',
        style: TextStyle(
          color: ConstantColors.whiteColor,
          fontFamily: 'Gilroy_Bold',
          fontSize: 14.0,
        ),
      ),
    );
  }
}
