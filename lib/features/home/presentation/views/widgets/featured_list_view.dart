import 'package:flutter/material.dart';

import 'book_cover.dart';


class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *.25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:5,
        itemBuilder: (context,index){
          return BookCover();
        },
      ),
    );
  }
}
