import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';

class ResponseErrorStateScreen extends StatelessWidget {
  const ResponseErrorStateScreen({
    super.key, required this.errorMessage,
  });
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(Assets.imagesCloud)
          )
      ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Center(
              child: Text(
                  errorMessage,
                  style:Styles.textStyle25
              ),
            ),
          )
        ],
      ),
    );
  }
}
