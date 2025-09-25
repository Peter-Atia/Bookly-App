import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BookDetailsAppBar(),
      body: BookDetailsViewBody(),
    );
  }
}
