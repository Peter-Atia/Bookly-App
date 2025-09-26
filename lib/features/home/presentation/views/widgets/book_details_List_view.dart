import 'package:flutter/material.dart';

import 'book_cover.dart';
class BookDetailsListView extends StatelessWidget {
  const BookDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *.15,
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
