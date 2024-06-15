import 'package:flutter/material.dart';
import 'package:task_weather/core/utils/styles.dart';

import '../../../domain/entities/searrch_entity.dart';

class CardWeather extends StatelessWidget {
  const CardWeather({
    super.key, required this.searchEntity,
  });
  final SearchEntity searchEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 200.0, right: 20, left: 20, bottom: 0),
      child: Container(
        height: 230,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.8),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            ///name of country
            Text(
              searchEntity.name!,
              style: Styles.textStyle25,
            ),
            const SizedBox(
              height: 30,
            ),
            ///weather degree
            Text(
              "weatherDegree: ${searchEntity.weather!}",
              style: Styles.textStyle15,
            ),

            ///weather icon
            Image.network(
              'http:${searchEntity.image}',
              height: 100,
              width: 100,
            )
          ],
        ),
      ),
    );
  }
}