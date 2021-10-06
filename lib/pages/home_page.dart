import 'package:flutter/material.dart';
import 'package:nonton/services/movie_service.dart';
import 'package:nonton/theme.dart';
import 'package:nonton/widget/card_disney.dart';
import 'package:nonton/widget/movie_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MovieService().getPlayingNowMovies();
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 30, left: 24, right: 24),
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
                    const SizedBox(
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
              decoration: const BoxDecoration(
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
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              MovieCard(
                name: 'John Wick 4',
                releas: 'Jun 17, 2021',
                imgUrl: 'assets/image3.png',
              ),
              MovieCard(
                name: 'Bohemian',
                releas: 'Jun 17, 2021',
                imgUrl: 'assets/image4.png',
              ),
            ],
          ),
        ),
      );
    }

    Widget fromdisney() {
      return Container(
        margin: const EdgeInsets.only(top: 30, right: 24, left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'From Disney',
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CardDisney(
              name: 'Mulan Session',
              imgUrl: 'assets/image7.png',
              releas: 'Juni 17 2021',
            ),
            const CardDisney(
              name: 'Beauty & Beast',
              imgUrl: 'assets/image6.png',
              releas: 'Juni 17 2021',
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
            movie(),
            fromdisney(),
          ],
        ),
      ),
    );
  }
}
