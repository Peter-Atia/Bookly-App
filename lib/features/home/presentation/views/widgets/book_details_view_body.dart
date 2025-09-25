import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
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
              Text("Name", style: Styles.textStyle20),
              Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: Text("author"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
