import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
              name: 'Rop pop',
              imageUrl:
                  'https://www.teahub.io/photos/full/217-2178987_hatsune-miku-anime-girl-4k-fondos-de-pantalla.jpg'),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
              imageUrl:
                  'https://p4.wallpaperbetter.com/wallpaper/258/463/694/anime-girl-download-for-pc-desktop-wallpaper-preview.jpg'),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
              imageUrl:
                  'https://w0.peakpx.com/wallpaper/530/632/HD-wallpaper-yoriichi-tsugikuni-anime.jpg'),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
              imageUrl:
                  'https://mir-s3-cdn-cf.behance.net/project_modules/1400/d95a4985136901.5d7275cfd0791.png'),
        ],
      ),
    );
  }
}
