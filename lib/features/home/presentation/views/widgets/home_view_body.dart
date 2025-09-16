import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';

import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppbar(),
        FeaturedBooksListView(),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(14),
          child: Text("Best Seller",style: Styles.titleMedium,),
        ),

      ],
    );
  }
}
