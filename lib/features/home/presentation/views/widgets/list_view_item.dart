import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width *.3,
      child: AspectRatio(
        aspectRatio: 1.8/3,
        child: Container(

          height: MediaQuery.of(context).size.height * 0.25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.fill,
                image: AssetImage(AssetsData.testImage)
            ),
          ),
        ),
      ),
    );
  }
}
