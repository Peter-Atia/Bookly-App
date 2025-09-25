import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';
class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: const Row(
        children: [
          Expanded(
              child: CustomButton(
                text: "Price",
                backgroundColor: Colors.white ,
                textColor: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12)
                ),
              )
          ),
          Expanded(
              child: CustomButton(
                text: "Free Preview",
                backgroundColor: Color(0xffef8262) ,
                textColor: Colors.white ,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12)
                ),
              )
          ),
        ],
      ),
    );
  }
}