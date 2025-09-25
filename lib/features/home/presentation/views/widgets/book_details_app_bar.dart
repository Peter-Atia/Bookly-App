import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class BookDetailsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const BookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      leading: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: IconButton(onPressed: () {}, icon: Icon(Icons.close)),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
