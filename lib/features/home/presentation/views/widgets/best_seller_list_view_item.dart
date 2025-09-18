import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'book_rating.dart';
import 'list_view_item.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: Row(
        children: [
          SizedBox(child: FeaturedListViewItem()),
          SizedBox(width: 6),
          Container(
            color: Colors.green,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .55,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name", style: Styles.textStyle20),
                  const SizedBox(height: 3),
                  Text("Author", style: Styles.textStyle14),
                  const SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Price", style: Styles.textStyle20),
                      BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
