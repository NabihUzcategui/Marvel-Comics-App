import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_marvel_comics_app/utils/extensions.dart';
import 'package:flutter_marvel_comics_app/widgets/custom_padding.dart';
import 'package:flutter_marvel_comics_app/widgets/shop_icon.dart';

class ComicDetail extends StatelessWidget {
  const ComicDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeData.scaffoldBackgroundColor,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          const ShopIcon(),
          20.ph,
        ],
      ),
      body: CustomPadding(
        child: Column(
          children: [
            20.pv,
            Container(
              alignment: Alignment.center,
              child: Container(
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
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/wonderwoman.jpg',
                    width: 200,
                  ),
                ),
              ),
            ),
            20.pv,
            const Text(
              'Wonder Woman (2020) # 1',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            10.pv,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '5.0',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                5.ph,
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
              ],
            ),
            30.pv,
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos,desde el año 1500, cuando un impresor (N. del T. persona que se) otra palabra',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 16,
                    ),
                  ),
                  TextSpan(
                    text: ' See varinats covers ->',
                    style: TextStyle(
                      color: Colors.blue.shade600,
                      fontSize: 16,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => print('hola'),
                  ),
                ],
              ),
            ),
            30.pv,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Cancel',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    print('Buy full version');
                  },
                  child: Container(
                    width: 230,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 5.0,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Buy full version',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        15.ph,
                        const Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.white,
                          size: 26,
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
