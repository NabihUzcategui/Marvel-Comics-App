// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_marvel_comics_app/pages/comic_detail.dart';
import 'package:flutter_marvel_comics_app/utils/extensions.dart';

class ListRowTileComic extends StatelessWidget {
  final String title;
  final String image;
  final double price;
  final String date;
  final double rate;

  const ListRowTileComic({
    Key? key,
    required this.title,
    required this.image,
    required this.price,
    required this.date,
    required this.rate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ComicDetail(),
          ),
        );
      },
      child: Row(
        children: [
          Container(
            height: 150,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  blurRadius: 5.0,
                  offset: Offset(1, 1),
                )
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(image),
            ),
          ),
          10.ph,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                8.pv,
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow.shade200,
                    ),
                    5.ph,
                    Text(
                      rate.toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                6.pv,
                Text(
                  'On Sale $date',
                  style: const TextStyle(color: Colors.grey, fontSize: 16.0),
                ),
                10.pv,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'U.S. PRICE: \$$price',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const Icon(Icons.arrow_right_alt_outlined),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
