import 'package:flutter/material.dart';
import 'package:nonton/pages/detail_page.dart';

import '../theme.dart';

class MovieCard extends StatelessWidget {
  final String name;
  final String releas;
  final String imgUrl;
  const MovieCard({
    Key? key,
    required this.imgUrl,
    required this.name,
    required this.releas,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DetailPage(),
          ),
        );
      },
      child: Container(
        width: 300,
        margin: const EdgeInsets.only(
          right: 24,
        ),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(
            21,
          ),
        ),
        child: Column(
          children: [
            Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imgUrl),
                ),
                borderRadius: BorderRadius.circular(21),
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: blackTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        releas,
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 18,
                        width: 18,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/ic_star.png',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 18,
                        width: 18,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/ic_star.png',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 18,
                        width: 18,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/ic_star.png',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 18,
                        width: 18,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/ic_star.png',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 18,
                        width: 18,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/ic_star.png',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
