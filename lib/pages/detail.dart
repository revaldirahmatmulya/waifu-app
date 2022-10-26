import 'package:flutter/material.dart';
import '../data/data.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Waifu;

    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Container(
                margin: const EdgeInsets.only(right: 52),
                child: const Text('Detail')),
          ),
        ),
        body: ListView(
          children: [
            imgView(args.img),
            titleSection(args.name, args.sub),
            descSection(args.desc),
          ],
        ));
  }

  Image imgView(String assets) {
    return Image.asset(
      assets,
      width: 600,
      fit: BoxFit.cover,
    );
  }

  Container titleSection(String namaWisata, String sub) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  child: Text(namaWisata,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                Text(
                  sub,
                  style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container descSection(String desc) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Text(
        desc,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
