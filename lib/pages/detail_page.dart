import 'package:flutter/material.dart';
import 'package:nonton/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
          left: 24,
          right: 24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 38,
              height: 38,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/btn_back.png'),
                ),
              ),
            ),
            Container(
              width: 38,
              height: 38,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/btn_love.png'),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget most() {
      return Container(
        margin: const EdgeInsets.only(top: 23, left: 24, right: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21),
          color: white,
        ),
        child: Row(
          children: [
            Container(
              width: 120,
              height: 150.72,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/image8.png'),
                ),
                borderRadius: BorderRadius.circular(21),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'The Dark II',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semibold,
                    ),
                  ),
                  Text(
                    'Jun 17, 2021',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 18,
                        height: 18,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/ic_star.png'),
                          ),
                        ),
                      ),
                      Container(
                        width: 18,
                        height: 18,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/ic_star.png'),
                          ),
                        ),
                      ),
                      Container(
                        width: 18,
                        height: 18,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/ic_star.png'),
                          ),
                        ),
                      ),
                      Container(
                        width: 18,
                        height: 18,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/ic_star.png'),
                          ),
                        ),
                      ),
                      Container(
                        width: 18,
                        height: 18,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/ic_star.png'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        '13k people',
                        style: blackTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    '1h.30m',
                    style: blackTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Dolby Production',
                    style:
                        greyTextStyle.copyWith(fontSize: 12, fontWeight: light),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            most(),
          ],
        ),
      ),
    );
  }
}
