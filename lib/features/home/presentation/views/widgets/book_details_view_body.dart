import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'book_actions.dart';
import 'book_cover.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .50,
                child: Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: BookCover(),
                ),
              ),
              const SizedBox(height: 30),
              const Text("Name", style: Styles.textStyle30),
              const SizedBox(height: 6),
              Opacity(
                opacity: 0.7,
                child: Text(
                  "author",
                  style: Styles.textStyle18.copyWith(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const BookRating(),
              const SizedBox(height: 37),
              const BookActions()
            ],
          ),
        ),
      ),
    );
  }
}
