import 'package:flutter/material.dart';
import 'package:nonton/theme.dart';

import 'home_page.dart';

class SuccesPage extends StatelessWidget {
  const SuccesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 367,
                height: 327,
                child: Image.asset(
                  'assets/image_succes.png',
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 7,
                ),
                child: Column(children: [
                  Text(
                    'Payment Success',
                    style: whiteTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Yes! time to relax yourself by\nwatching the good movie',
                    style: darkgreyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  )
                ]),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 40,
                ),
                height: 50,
                width: 220,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        37,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  child: Text(
                    'Back To Home',
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
