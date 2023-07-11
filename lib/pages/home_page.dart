import 'package:flutter/material.dart';
import 'package:flutter_marvel_comics_app/utils/extensions.dart';
import 'package:flutter_marvel_comics_app/widgets/custom:padding.dart';
import 'package:flutter_marvel_comics_app/widgets/list_row_tile_comic.dart';
import 'package:flutter_marvel_comics_app/widgets/list_tile_comic.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPadding(
        child: Column(
          children: [
            kToolbarHeight.pv,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 22.0,
                      child: Text('NU'),
                    ),
                    8.ph,
                    const Text(
                      'Nabih Uzcategui',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17.0),
                    ),
                  ],
                ),
                const Icon(Icons.search),
              ],
            ),
            20.pv,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best Selling Comics',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  'See all',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            20.pv,
            SizedBox(
              height: 300,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  const ListTileComic(
                    image: 'assets/wonderwoman.jpg',
                    titleComic: 'wonder woman',
                  ),
                  20.ph,
                  const ListTileComic(
                    image: 'assets/superman.jpg',
                    titleComic: 'Xmen',
                  ),
                  20.ph,
                  const ListTileComic(
                    image: 'assets/hulk-800.jpg',
                    titleComic: 'hulk',
                  ),
                  20.ph,
                  const ListTileComic(
                    image: 'assets/jocker.jpg',
                    titleComic: 'the jocker',
                  ),
                  20.ph,
                  const ListTileComic(
                    image: 'assets/spiderman.jpg',
                    titleComic: 'Spiderman',
                  ),
                  20.ph,
                  const ListTileComic(
                    image: 'assets/aquaman.jpg',
                    titleComic: 'aquaman',
                  ),
                ],
              ),
            ),
            10.pv,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Last Updated',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  'See all',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            15.pv,
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.zero,
                children: [
                  const ListRowTileComic(
                    title: 'The Jocker',
                    image: 'assets/jocker.jpg',
                    rate: 4.5,
                    date: '10-2023',
                    price: 9.99,
                  ),
                  10.pv,
                  const ListRowTileComic(
                    title: 'Wonder Woman',
                    image: 'assets/wonderwoman.jpg',
                    rate: 4.8,
                    date: '09-2023',
                    price: 19.99,
                  ),
                  10.pv,
                  const ListRowTileComic(
                    title: 'Aquaman',
                    image: 'assets/aquaman.jpg',
                    rate: 3.7,
                    date: '12-2023',
                    price: 7.99,
                  ),
                  10.pv,
                  const ListRowTileComic(
                    title: 'Hulk',
                    image: 'assets/hulk-800.jpg',
                    rate: 3.9,
                    date: '01-2024',
                    price: 8.99,
                  ),
                  10.pv,
                  const ListRowTileComic(
                    title: 'Spiderman',
                    image: 'assets/spiderman.jpg',
                    rate: 5.0,
                    date: '12-2023',
                    price: 13.0,
                  ),
                  10.pv,
                  const ListRowTileComic(
                    title: 'Superman',
                    image: 'assets/superman.jpg',
                    rate: 4.6,
                    date: '12-2023',
                    price: 12.99,
                  ),
                  .10.pv,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
