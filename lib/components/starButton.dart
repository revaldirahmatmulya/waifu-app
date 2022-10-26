import 'package:flutter/material.dart';

class StarButton extends StatefulWidget {
  const StarButton({Key? key}) : super(key: key);

  @override
  State<StarButton> createState() => _StarButtonState();
}

class _StarButtonState extends State<StarButton> {
  bool isFavourited = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        onButtonToggle();
      },
      icon: (isFavourited)
          ? const Icon(
              Icons.star,
              color: Colors.orange,
            )
          : const Icon(Icons.star_border),
      color: Colors.orange,
    );
  }

  void onButtonToggle() {
    setState(() {
      if (isFavourited) {
        isFavourited = false;
      } else {
        isFavourited = true;
      }
    });
  }
}
