import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class DescriptionWeatherWidget extends StatelessWidget {
  const DescriptionWeatherWidget({
    super.key, required this.nameOfDescription,
    required this.valueOfDescription,
  });

  final String nameOfDescription;
  final num valueOfDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            nameOfDescription,
            style: Styles.textStyle15,
          ),
          const SizedBox(
            height: 20,
          ),
          Text("$valueOfDescription",
              style: Styles.textStyle15),
        ],
      ),
    );
  }
}
