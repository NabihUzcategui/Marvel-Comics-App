// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_marvel_comics_app/utils/extensions.dart';

class ListTileComic extends StatelessWidget {
  final String titleComic;
  final String image;

  const ListTileComic({
    Key? key,
    required this.titleComic,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black45,
                blurRadius: 5.0,
                offset: Offset(1, 1),
              )
            ],
          ),
          height: 260,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(image),
          ),
        ),
        12.pv,
        Text(
          titleComic.toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
        ),
      ],
    );
  }
}
