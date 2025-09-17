import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';
import 'best_seller_item.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppbar(),
          FeaturedBooksListView(),
          Padding(
            padding: const EdgeInsets.only( top: 20,bottom: 8),
            child: Text("Best Seller", style: Styles.textStyle18),
          ),
          BestSellerItem(),
        ],
      ),
    );
  }
}