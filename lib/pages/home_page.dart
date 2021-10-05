import 'package:flutter/material.dart';
import 'package:nonton/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: 24, right: 24),
        child: Row(
          children: [
            Container(
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Home',
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: bold,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Watch much easier',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 55,
              height: 45,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/btn_search.png'))),
            ),
          ],
        ),
      );
    }

    Widget movie() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
          left: 24,
          right: 24,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                width: 300,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(21),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 300,
                          height: 200,
                          decoration: BoxDecoration(
                            color: white,
                            image: DecorationImage(
                              image: AssetImage('assets/image3.png'),
                            ),
                            borderRadius: BorderRadius.circular(21),
                          ),
                        ),
                        SizedBox(
                          height: 26,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 86),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'John Wick 4',
                                    style: blackTextStyle.copyWith(
                                        fontSize: 20, fontWeight: bold),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Jun 17, 2021',
                                    style: greyTextStyle.copyWith(fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/ic_star.png',
                                    width: 18,
                                  ),
                                  Image.asset(
                                    'assets/ic_star.png',
                                    width: 18,
                                  ),
                                  Image.asset(
                                    'assets/ic_star.png',
                                    width: 18,
                                  ),
                                  Image.asset(
                                    'assets/ic_star.png',
                                    width: 18,
                                  ),
                                  Image.asset(
                                    'assets/ic_star.png',
                                    width: 18,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            movie(),
          ],
        ),
      ),
    );
  }
}
