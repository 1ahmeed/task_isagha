import 'package:flutter/material.dart';
import 'package:task_weather/features/search_weather/domain/entities/searrch_entity.dart';

import 'description_weather_widget.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({
    super.key, required this.searchEntity,
  });
  final SearchEntity searchEntity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            DescriptionWeatherWidget(
              valueOfDescription: searchEntity.windKPH!,
              nameOfDescription: "Wind KPH",
            ),
            const SizedBox(width: 10,),
            DescriptionWeatherWidget(
              valueOfDescription: searchEntity.windDegree!,
              nameOfDescription: "wind Degree",
            ),
            const SizedBox(width: 10,),
            DescriptionWeatherWidget(
              valueOfDescription: searchEntity.windMPH!,
              nameOfDescription: "wind MPH",
            ),
            const SizedBox(width: 10,),


          ],
        ),
      ),
    );
  }
}
