import 'package:flutter/material.dart';
import 'package:nonton/pages/succes_page.dart';
import 'package:nonton/theme.dart';
import 'package:nonton/widget/gallery.dart';

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
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '13K',
                              style: blackTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: medium,
                              ),
                            ),
                            TextSpan(
                              text: ' people',
                              style: blackTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: regular,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  RichText(
                    text: TextSpan(
                        text: '1h 30m',
                        style: blackTextStyle,
                        children: [
                          TextSpan(
                              text: '\nDolby Production', style: greyTextStyle)
                        ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget movieSynopsis() {
      return Container(
        margin: EdgeInsets.only(top: 40, left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Movie Synopsis',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: bold,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                'The Dark is a 2018 Austrian horror film\nwritten and directed by Justin P. Lange]nand starring Nadia Alexander, Toby\nNichols, and Karl Markovics.',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  'trying to succeed as something both\nmetaphorical and very literal-minded, the\nmovie ends up being neither one.',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                )),
          ],
        ),
      );
    }

    Widget gallery() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 24,
          right: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                'Gallery',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 12,
              ),
              child: Row(
                children: [
                  galleryCard(
                    imgUrl: 'assets/gallery1.png',
                  ),
                  galleryCard(
                    imgUrl: 'assets/gallery2.png',
                  ),
                  galleryCard(
                    imgUrl: 'assets/gallery3.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget buttonbuyticket() {
      return Align(
        child: Container(
          margin: EdgeInsets.only(
            top: 41,
            bottom: 57,
          ),
          width: 220,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: blackColor,
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
                  builder: (cotext) => SuccesPage(),
                ),
              );
            },
            child: Text(
              'Buy Ticket',
              style: whiteTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semibold,
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            most(),
            movieSynopsis(),
            gallery(),
            buttonbuyticket(),
          ],
        ),
      ),
    );
  }
}
