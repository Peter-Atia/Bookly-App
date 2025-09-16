import 'package:bookly_app/features/home/presentation/views/widgets/custom_appBar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppbar(),
        ListViewItem(),

      ],
    );
  }
}
