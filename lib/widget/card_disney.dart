import 'package:flutter/material.dart';
import 'package:nonton/models/disney_model.dart';
import 'package:nonton/models/movie_model.dart';
import 'package:nonton/pages/detail_page.dart';
import 'package:nonton/theme.dart';

class CardDisney extends StatelessWidget {
  // final String name;
  // final String imgUrl;
  // final String releas;
  final MovieModel disney;
  const CardDisney({
    Key? key,
    required this.disney,
    // required this.releas,
    // required this.name,
    // required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (contect) => const DetailPage(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 30),
        height: 127,
        decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(
              21,
            )),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 127,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(disney.posterPath),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(21),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    disney.title,
                    style: blackTextStyle.copyWith(
                        fontSize: 20, fontWeight: semibold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Jun 17, 2021',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 20,
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
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
